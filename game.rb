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

  def current_board 
    puts "#{@player_1.name}: #{@player_1.score}/3 vs #{@player_2.name}: #{@player_2.score}/3"
  end

  def round 
    # Ask Player 1 question
    puts "----- NEW TURN -----"
    p_1_q = Question.new
    p_1_q.ask(@player_1.name)
    print "> "

    p_1_answer = $stdin.gets.chomp.to_i
    if p_1_q.check_answer?(p_1_answer)
      puts "YES! You are correct."
      @player_1.award_point
    else
      puts "Seriously #{@player_1.name}? No!"
    end

    current_board
    # Ask Player 2 question
    puts "----- NEW TURN -----"
    p_2_q = Question.new
    p_2_q.ask(@player_2.name)
    print "> "

    p_2_answer = $stdin.gets.chomp.to_i
    if p_2_q.check_answer?(p_2_answer)
      puts "YES! You are correct."
      @player_2.award_point
    else
      puts "Seriously #{@player_2.name}? No!"
    end

    current_board
  end

  def start 
    puts "Welcome #{@player_1.name} and #{@player_2.name}!"
    puts "Let's start TwO-O-Player Math Game"
    round
  end

end

game = Game.new
game.start