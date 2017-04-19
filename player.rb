class Player

  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
    @location = 0

  end

  def win
    return "#{@name} wins!" if @location >= 9

  end

  def move
    # d6 = [1,2,3,4,5,6]
    # d6.shuffle.first  <-- replace 5 below with this

    @location += 5
  end




end
