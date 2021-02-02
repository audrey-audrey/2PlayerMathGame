class Player
  attr_accessor :lives, :score
  attr_reader :name
  attr_writer :award_point

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def damage
    self.lives -= 1
  end

  def award_point
    self.score += 1
  end

  def lost?
    @lives == 0
  end
end


