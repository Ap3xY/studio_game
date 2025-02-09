require_relative "./lib/game"
require_relative "./lib/player"
require_relative "./lib/clumsy_player"
require_relative "./lib/berserk_player"

game = Game.new("Winner Takes All")

players_file = File.join(__dir__, "players.csv")
game.load_players(ARGV.shift || players_file)

clumsy = ClumsyPlayer.new("klutz", 105)
game.add_player(clumsy)

berserker = BerserkPlayer.new("berserker", 50)
game.add_player(berserker)

loop do
  print "\nHow many game rounds? ('quit' to exit) "
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when "quit", "exit"
    game.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

game.save_high_scores
