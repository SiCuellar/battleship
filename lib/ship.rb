require "pry"
require "./lib/cell"

class Ship
  attr_reader :length,
              :sink_counter

  attr_accessor :sunk

  def initialize(length)
    @length = length
    @sink_counter = 0
  end

  def hit
    @length -= 1
  end

  def sunk
    if @length == 0
      @sink_counter += 1
      true
    else
      false
    end
  end
end
