class Player

  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
    @location = 0

  end

  def move
    @location += 5
  end


end
