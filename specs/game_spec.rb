require("minitest/autorun")
require("minitest/emoji")
require_relative("../game.rb")
require_relative("../player.rb")

class TestGame < MiniTest::Test

  def setup
    @game = Game.new()
    @player1 = Player.new("Charlie")
    @player2 = Player.new("Matt")
    @game.add_player(@player1)
    @game.add_player(@player2)
    @game.start_game
  end

  # def test_game_has_player_array
  #   assert_equal([], @game.players)
  # end
  #
  # def test_add_player_to_players
  #   @game.add_player(@player1)
  #   assert_equal([@player1], @game.players)
  # end

  def test_add_multiple_player
    # @game.add_player(@player1)
    # @game.add_player(@player2)
    assert_equal([@player1, @player2], @game.players)
  end

  def test_next_player
    assert_equal(@player1, @game.next_player)
  end
  #
  # def test_next_player_two_turns
  #   @game.next_player
  #   assert_equal(@player2, @game.next_player)
  # end

  def test_start_game_populates_index_array
    assert_equal(2, @game.players_index_position.count)
  end


end
