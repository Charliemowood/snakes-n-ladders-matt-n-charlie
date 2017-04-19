class Game

  attr_reader :players, :players_index_position, :board

  def initialize
    @players = []
    @players_index_position = []

    @board = {
      5 => 2,
      13 => 10,
      39 => 19,
      45 => 5,
      60 => 11,
      67 => 9,
      80 => 15,
      91 => 3,
      12 => -3,
      19 => -15,
      28 => -13,
      51 => -32,
      72 => -21,
      79 => -9,
      82 => -12,
      99 => -50
    }

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
