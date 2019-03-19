class Player
  attr_reader :name, :score
  SCORE = 3

  def initialize(name)
    @name = name
    @score = SCORE
  end

  def wrong
    @score -= 1
    
  end

  def lose?
    @score == 0
  end

end