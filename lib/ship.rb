require "pry"
require "./lib/cell"

class Ship
  attr_reader :life_ticker,
              :boat_sink_counter

  attr_accessor :sunk

  def initialize(life_ticker)
    @life_ticker =  life_ticker
    @boat_sink_counter = 0
  end

  def hit
    @life_ticker -= 1
  end

  def sunk
    if @life_ticker == 0
      @boat_sink_counter += 1
      true
    else
      false
    end
  end
end
