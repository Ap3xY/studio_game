require "minitest/autorun"

require_relative  "../lib/player.rb"

class PlayerTest < Minitest::Test

  def setup
    @test_player = Player.new("tester", 100)
  end

  def test_player_has_capitalized_name
    assert_equal "Tester", @test_player.name
  end

  def test_player_has_an_initial_health
    assert_equal 100, @test_player.health
  end

  def test_player_computes_a_score_as_the_sum_of_its_health_and_length_of_name
      assert_equal @test_player.name.length + @test_player.health, @test_player.score
  end

  def test_player_has_a_string_representation
    assert_equal "I am #{@test_player.name} with a health of #{@test_player.health} and a score of #{@test_player.score}", @test_player.to_s
  end

  def test_player_increases_health_by_15_when_boosted
    assert_equal @test_player.health + 15, @test_player.boost
  end

  def test_player_decreases_health_by_10_when_drained
    assert_equal @test_player.health - 10, @test_player.drain
  end
end
