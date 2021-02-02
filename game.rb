require './player'
require './question'

class Game 
  def initialize
    puts "Enter Player 1 name"
    print "> "
    p_1 = $stdin.gets.chomp

    @player_1 = Player.new(p_1)

    puts "Enter Player 2 name"
    print "> "
    p_2 = $stdin.gets.chomp

    @player_2 = Player.new(p_2)
  end

  def round 
    p_1_q = Question.new
    puts "#{p_1_q.ask(@player_1.name)}"
    print "> "
    p_1_answer = $stdin.gets.chomp.to_i
    puts p_1_q.check_answer?(p_1_answer)
  end

  def start 
    puts "Welcome #{@player_1.name} and #{@player_2.name}!"
    puts "Let's start TwO-O-Player Math Game"
    round
  end

end

game = Game.new
game.start