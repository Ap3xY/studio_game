class Player
  attr_accessor :name, :score
  attr_reader :health

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
      @score = name.length + health
  end

  def to_s
      "I am #{@name} with a health of #{@health} and a score of #{@score}"
  end

  def boost
      @health += 15
  end

  def drain
      @health -= 10
  end
end
