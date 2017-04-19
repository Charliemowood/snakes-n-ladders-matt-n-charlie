

class Player

  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
    @location = 0

  end

  # def win
  #   finish_line = 11
  #   return "#{@name} wins!" if @location >= finish_line
  #
  # end

  def move(board)
    finish_line = 100

    d6 = [1,2,3,4,5,6]
    # d6.shuffle.first  <-- replace 5 below with this
    @location += d6.shuffle.first
    if board.has_key?(@location) == true
      @location += board[@location]
    end

    return "#{@name} wins!" if @location >= finish_line



  end




end
