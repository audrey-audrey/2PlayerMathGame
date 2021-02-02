class Player
  attr_reader :name
  attr_accessor :lives, :score, :award_point

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
end


