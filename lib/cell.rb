require "pry"
class Cell
  attr_reader :position
  attr_accessor :state,
                :ship
  def initialize(point, state = " ")
    @point = point
    @state = state
    @ship = nil
  end

  def miss
    @state = "M"
  end

  def hit
    @state = "H"
  end

  def state_switch
    if @ship
      hit
    else
      miss
    end
  end
end
