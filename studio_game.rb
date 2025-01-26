player_name = "finn"
player_health = 60


class Player
    attr_accessor :name, :score
    attr_reader :health

    def initialize(name, health = 100)
        @name = name
        @health = health
        @score = name.length + health
    end

    def to_s
        "I am #{@name.capitalize} with a health of #{@health} and a score of #{@score}"
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
puts player_1
player_1.boost
puts player_1

player_2 = Player.new("lucy", 90)
puts player_2
player_2.drain
puts player_2

player_3 = Player.new("jase")
puts player_3
player_3.boost
player_3.boost
puts player_3

player_4 = Player.new("alex", 125)
puts player_4.name
player_4.name = "Alexander"
puts player_4.name
puts player_4.health
puts player_4.score
puts player_4
