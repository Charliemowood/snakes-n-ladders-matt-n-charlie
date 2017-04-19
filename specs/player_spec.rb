require("minitest/autorun")
require("minitest/emoji")
require_relative("../player.rb")
require_relative("../game.rb")

class TestPlayer < MiniTest::Test

  def setup
    @game = Game.new()
    @player1 = Player.new("Charlie")
    @player2 = Player.new("Matt")
    @player3 = Player.new("Craig")
    @game.add_player(@player1)
    @game.add_player(@player2)
    @game.add_player(@player3)
    @game.start_game
  end

  def test_player_has_name
    assert_equal("Charlie", @player1.name)
  end

  def test_player_has_location_0
    assert_equal(0, @player2.location)
  end

  # def test_location_can_change
  #   @player1.move(@game.board)
  #   assert_equal(5, @player1.location)
  # end
  #
  #
  # def test_location_can_change_not_hardcoded
  #   @player1.move(@game.board)
  #   @player1.move(@game.board)
  #   assert_equal(10, @player1.location)
  # end
  #
  #
  # def test_win_condition_location_100
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   assert_equal("#{@player1.name} wins!", @player1.move(@game.board))
  # end


  # def test_ladder_at_5
  #   (@game.next_player).move(@game.board)
  #   assert_equal(7, @player1.location)
  # end
  #
  # def test_snake_at_12
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   (@game.next_player).move(@game.board)
  #   assert_equal(9, @player1.location)
  #
  # end

  def test_games_run
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
    (@game.next_player).move(@game.board)
  end
end
