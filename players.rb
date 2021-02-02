class Player
  attr_reader :name

  def initialize(name)
    @name = $stdin.gets.chomp
  end
end

player1 = 
