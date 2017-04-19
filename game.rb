class Game

  attr_reader :players, :players_index_position

  def initialize
    @players = []
    @players_index_position = []

  end

  def add_player(player_to_be_added)
    @players << player_to_be_added
  end

  def start_game
    number_of_players = @players.count
    until number_of_players == 0
      number_of_players -= 1
      @players_index_position << number_of_players
    end
  end

  def next_player
    @players_index_position.rotate!
    up_next = @players_index_position.first
    return @players[up_next]
  end


end
