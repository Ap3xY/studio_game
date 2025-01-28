# players can be added to the game
# boosts the player if a high number (5 or 6) is rolled
# skips the player if a medium number (3 or 4) is rolled
# drains the player if a low number (1 or 2) is rolled

require "minitest/autorun"

require_relative "../lib/game"
require_relative "../lib/player"

class GameTest < Minitest::Test
  def setup
    @test_game = Game.new("Test Game")
    @test_player_1 = Player.new("Tester 1")

    $stdout = StringIO.new
  end

  def test_game_has_no_players_initially
    assert_empty @test_game.players
  end

  def test_game_players_can_be_added_to_the_game
    @test_game.add_player(@test_player_1)

    assert_equal [@test_player_1], @test_game.players
  end

  def test_game_boosts_the_players_if_a_high_number_is_rolled
    @test_game.add_player(@test_player_1)

    @test_game.stub(:roll_die, 5) do
      @test_game.play()

      assert_equal 115, @test_player_1.health
    end
  end

  def test_game_skips_the_players_if_a_medium_number_is_rolled
    @test_game.add_player(@test_player_1)

    @test_game.stub(:roll_die, 4) do
      @test_game.play()

      assert_equal 100, @test_player_1.health
    end
  end

  def test_game_drains_the_players_if_a_low_number_is_rolled
    @test_game.add_player(@test_player_1)

    @test_game.stub(:roll_die, 2) do
      @test_game.play()

      assert_equal 90, @test_player_1.health
    end
  end
end
