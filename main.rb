require './game'

#Instantiates new game
game = Game.new();

#Game runs until end of game flag is true
while !game.endOfGame
  game.turn.askQuestion()
  game.getScore()
  game.nextTurn()
  puts "---New Turn---"
end

#Prints winner and ends game
game.getWinner()
puts "---Game Over---"
