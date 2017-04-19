require("minitest/autorun")
require("minitest/emoji")
require_relative("../player.rb")
require_relative("../game.rb")

class TestPlayer < MiniTest::Test

  def setup
    @game = Game.new()
    @player1 = Player.new("Charlie")
    @player2 = Player.new("Matt")
    @game.add_player(@player1)
    @game.add_player(@player2)
    @game.start_game
  end

  def test_player_has_name
    assert_equal("Charlie", @player1.name)
  end

  def test_player_has_location_0
    assert_equal(0, @player2.location)
  end

  def test_location_can_change
    @player1.move
    assert_equal(5, @player1.location)
  end


  def test_location_can_change_not_hardcoded
    @player1.move
    @player1.move
    assert_equal(10, @player1.location)
  end


  def test_win_condition_location_9
    (@game.next_player).move
    (@game.next_player).move
    (@game.next_player).move
    assert_equal("#{@player1.name} wins!", @player1.win)
  end



end
