class Turn 

  attr_accessor :turnNum, :player, :question

  def initialize(turnNum, player, question)
    @turnNum = turnNum
    @player = player
    @question = question
  end

  #Prints question for the player of the current turn and evaluate's the input.
  def askQuestion()
    puts "#{self.player.name}: #{self.question.question}"
    answer = self.player.get_input()
    
    #Decrenents number of lives if answer is wrong
    if answer.to_i != self.question.solution()
      self.player.lose_life()
      puts "#{self.player.name}: Seriously? No!"
    else
      puts "#{self.player.name}: YES! You are correct"
    end
  end
end