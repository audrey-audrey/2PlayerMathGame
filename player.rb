class Player
  attr_reader :name
  attr_accessor :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def damage
    self.lives -= 1
  end

  def score
    self.score += 1
  end
end


