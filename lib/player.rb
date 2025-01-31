class Player
  attr_accessor :name, :score
  attr_reader :health

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
      @score = name.length + health
      @treasures_found = Hash.new(0)
  end

  def add_treasure(name, points)
    @treasures_found[name] += points;
  end

  def to_s
      "I am #{@name} with a health of #{@health} and a score of #{@score}: #{@treasures_found}"
  end

  def boost
      @health += 15
  end

  def drain
      @health -= 10
  end
end
