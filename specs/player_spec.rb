require("minitest/autorun")
require("minitest/emoji")
require_relative("../player.rb")

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Charlie")

  end

  def test_player_has_name
    assert_equal("Charlie", @player1.name)
  end




end
