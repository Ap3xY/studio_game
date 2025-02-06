require_relative "treasure_trove"

class Game

  attr_reader :players

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

  def print_stats
    puts "\nHigh Scores:"
    sorted_players.each do |player|
      name = player.name.ljust(20, ".")
      points = player.score.round.to_s.rjust(5)
      puts "#{name}#{points}"
    end
  end

  def sorted_players
    @players.sort_by { |player| player.score }.reverse
  end

  def play(rounds)
    puts "Let's play a game!\n3\n2\n1\n"

    puts "\nThe following treasures can be found:"
    puts TreasureTrove.treasure_items

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

        treasure = TreasureTrove.random_treasure
        player.add_treasure(treasure.name, treasure.points)
        puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points"
      end
    end
    puts "\nAfter playing:"
    puts @players
  end
end
