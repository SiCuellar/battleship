require "minitest/autorun"
require "minitest/emoji"
require "./lib/ship"

class ShipTest < Minitest::Test

  def test_it_exist
    ship = Ship.new

    assert_instance_of Ship, ship
  end 
end
