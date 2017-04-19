class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player_to_be_added)
    @players << player_to_be_added
  end

end
