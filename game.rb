require './player'

class Game 

  def initialize
    p "Welcome to TwO-O-Player Math Game!"
    p "Enter Player 1 name"
    print "> "
    p_1 = $stdin.gets.chomp

    @player_1 = Player.new(p_1)

    p "Enter Player 2 name"
    print "> "
    p_2 = $stdin.gets.chomp

    @player_2 = Player.new(p_2)
  end



end

newGame = Game.new