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


puts "Let's play a game!\n3\n2\n1\n\n"

player_1 = Player.new("Alex", 60)
player_2 = Player.new("Sheldon", 90)
player_3 = Player.new("Sean")
player_4 = Player.new("Monique", 125)
player_5 = Player.new("Luan", 10)

players = [player_1, player_2, player_3, player_4, player_5]


players.each do | player |

    number_rolled = rand(1..6)
    case number_rolled
    when 1..2
        player_1.drain
        puts "#{player.name} got drained 😩"
    when 3..4
        puts "#{player.name} got skipped"
    else
        player_1.boost
        puts "#{player.name} got boosted 😁"
    end
end

puts "\nAfter playing:"
puts players




