class Player
  attr_accessor :name, :input, :lives

  def initialize(name)
    @name = name
    @input = nil
    @lives = 3
  end

  def lose_life()
    self.lives -= 1
  end

  def get_input()
    self.input = gets.chomp
  end
end