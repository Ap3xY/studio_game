player_name = "finn"
player_health = 60


def say_hello(name, health = 100)
    "#{name.capitalize}\'s health is #{health}"
end

puts "Let's play a game!\n3\n2\n1"
puts say_hello("finn", 60)
puts say_hello("lucy", 90)
puts say_hello("jase")
puts say_hello("alex", 125)
