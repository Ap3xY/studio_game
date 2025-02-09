require_relative "player"

class ClumsyPlayer < Player
  def initialize(name, health = 100)
    super(name, health)
    @boost_factor = 10
  end

  def boost
    @boost_factor.times { super }
  end

  def add_treasure(name, points)
    points = points / 2.0
    super(name, points)
  end
end

if __FILE__ == $0
  clumsy = ClumsyPlayer.new("klutz")

  clumsy.add_treasure("flute", 50)
  clumsy.add_treasure("flute", 50)
  clumsy.add_treasure("flute", 50)
  clumsy.add_treasure("star", 100)

  clumsy.treasures_found.each do |name, points|
    puts "#{name}: #{points} points"
  end
  puts "#{clumsy.points} total points"
end
