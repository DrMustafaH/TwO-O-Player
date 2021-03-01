require './player'
require './turn'
require './question'
require 'pry'

class Game
  attr_accessor :turnNum, :turn, :endOfGame, :player1, :player2

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @turnNum = 1
    # binding.pry
    @turn = Turn.new(@turnNum, @player1, Question.new(rand(1..20), rand(1..20)))
    @endOfGame = false
  end

  #Initializes next turn and select the other player as current player
  def nextTurn()
    self.turnNum += 1 

    if self.turn.player == self.player1
      self.turn = Turn.new(turnNum, self.player2, Question.new(rand(1..20), rand(1..20)))
    else 
      self.turn = Turn.new(turnNum, self.player1, Question.new(rand(1..20), rand(1..20)))
    end
  end

  #Prints the score of both players on the screen
  def getScore()
    if self.player1.lives <= 0
      self.endOfGame = true
    end
    if self.player2.lives <= 0
      self.endOfGame = true
    end
    puts "p1: #{self.player1.lives}/3 vs p2: #{self.player2.lives}/3"
  end

  # Prints the winner of when the game is over
  def getWinner()
    if self.player1.lives > self.player2.lives
      puts "#{self.player1.name} wins with a score of #{self.player1.lives}/3"
    else
      puts "#{self.player2.name} wins with a score of #{self.player2.lives}/3"
    end
  end
end
