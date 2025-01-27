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

class Game
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

  def play
    puts "Let's play a game!\n3\n2\n1\n\n"

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
    end

    puts "\nAfter playing:"
    puts @players
  end
end

player_1 = Player.new("Alex", 60)
player_2 = Player.new("Sheldon", 90)
player_3 = Player.new("Sean")
player_4 = Player.new("Monique", 125)
game = Game.new("Winner Takes All")

game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play








