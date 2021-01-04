class Player
  attr_accessor :lives, :name

  def initialize(name, numOfLives=3)
    @lives = numOfLives
    @name = name
  end

  def isAlive?
    @lives > 0
  end

end