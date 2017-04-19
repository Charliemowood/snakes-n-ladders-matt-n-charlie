require("minitest/autorun")
require("minitest/emoji")
require_relative("../player.rb")

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Charlie")
    @player2 = Player.new("Matt")
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

end
