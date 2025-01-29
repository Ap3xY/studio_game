class Game

  attr_reader :players

  Treasure = Data.define(:name, :points)
  TREASURES = [
  Treasure.new("pie", 10),
  Treasure.new("coin", 25),
  Treasure.new("flute", 50),
  Treasure.new("compass", 65),
  Treasure.new("key", 80),
  Treasure.new("crown", 90),
  Treasure.new("star", 100)
]

  def initialize(name)
    @name = name
    @players = []
  end

  def add_player(player)
    @players.push(player)
  end

  def roll_die
    rand(1..6)
  end

  def play(rounds)
    puts "Let's play a game!\n3\n2\n1\n"

    puts "\nThe following treasures can be found:"
    TREASURES.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"

      @players.each do | player |
        case roll_die
        when 1..2
            player.drain
            puts "#{player.name} got drained 😩"
        when 3..4
            puts "#{player.name} got skipped"
        else
            player.boost
            puts "#{player.name} got boosted 😁"
        end

        treasure = TREASURES.sample
        puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points"
      end
    end
    puts "\nAfter playing:"
    puts @players
  end
end
