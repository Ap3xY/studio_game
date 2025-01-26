player_name = "finn"
player_health = 60


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


puts "Let's play a game!\n3\n2\n1"

player_1 = Player.new("finn", 60)
# player_2 = Player.new("lucy", 90)
# player_3 = Player.new("jase")
# player_4 = Player.new("alex", 125)


number_rolled = rand(1..6)

case number_rolled
when 1..2
    player_1.drain
    puts "#{player_1.name} got drained"
when 3..4
     puts "#{player_1.name} got skipped"
else
     player_1.boost
    puts "#{player_1.name} got boosted"
end
