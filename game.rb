require './player'
require './question'

class Game 
@@number_of_rounds = 0  

  def initialize
    puts "Enter Player 1 name"
    print "> "
    p_1 = $stdin.gets.chomp
    puts

    @player_1 = Player.new(p_1)

    puts "Enter Player 2 name"
    print "> "
    p_2 = $stdin.gets.chomp
    puts

    @player_2 = Player.new(p_2)
  end

  def current_board 
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  end

  def game_over
    if @player_1.lost? 
      puts "#{@player_2.name} wins with a score of #{@player_2.score}!!"
      puts "---- GAME OVER ----"
      puts "Good bye!"
    elsif @player_2.lost?
      puts "#{@player_1.name} wins with a score of #{@player_1.score}!!"
      puts "---- GAME OVER ----"
      puts "Good bye!"
    end
  end

  def round 
    @@number_of_rounds += 1

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
      @player_1.damage
    end

    puts
    current_board
    puts

    game_over

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
      @player_2.damage
    end

    puts
    current_board
    puts

    game_over
  end

  def start 
    puts "Welcome #{@player_1.name} and #{@player_2.name}!"
    puts "Let's start TwO-O-Player Math Game"
    puts
    round
  end
end

game = Game.new
game.start