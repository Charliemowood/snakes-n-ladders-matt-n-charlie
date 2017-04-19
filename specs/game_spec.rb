require("minitest/autorun")
require("minitest/emoji")
require_relative("../game.rb")
require_relative("../player.rb")

class TestGame < MiniTest::Test

  def setup
    @game = Game.new()
    @player1 = Player.new("Charlie")
    @player2 = Player.new("Matt")
  end

  def test_game_has_player_array
    assert_equal([], @game.players)
  end

  def test_add_player_to_players
    @game.add_player(@player1)
    assert_equal([@player1], @game.players)
  end

  def test_add_multiple_player
    @game.add_player(@player1)
    @game.add_player(@player2)
    assert_equal([@player1, @player2], @game.players)
  end

end
