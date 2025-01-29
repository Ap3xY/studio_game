require_relative "./lib/game"
require_relative "./lib/player"

player_1 = Player.new("Alex", 60)
player_2 = Player.new("Sheldon", 90)
player_3 = Player.new("Sean")
player_4 = Player.new("Monique", 125)
game = Game.new("Winner Takes All")

game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play(3)








