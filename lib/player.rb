class Player
  attr_accessor :name, :score
  attr_reader :health, :treasures_found

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
      @treasures_found = Hash.new(0)
  end

  def add_treasure(name, points)
    @treasures_found[name] += points;
  end

  def self.from_csv(line)
    name, health = line.split(',')
    Player.new(name, Integer(health))
  rescue ArgumentError
    puts "Ignored invalid health: #{health}"
    Player.new(name)
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}"
  end

  def boost
      @health += 15
  end

  def points
    @treasures_found.values.sum
  end

  def score
    @health + points
  end

  def drain
      @health -= 10
  end
end
