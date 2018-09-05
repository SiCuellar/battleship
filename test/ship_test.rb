require "minitest/autorun"
require "minitest/emoji"
require "./lib/ship"

class ShipTest < Minitest::Test

  def test_it_exist
    ship = Ship.new(2)

    assert_instance_of Ship, ship
  end

  def test_it_has_has_ticker
    ship = Ship.new(2)

    assert_equal 2, ship.life_ticker
  end

  def test_it_can_take_a_hit
    ship = Ship.new(2)

    ship.hit
    assert_equal 1, ship.life_ticker
  end

  def test_it_can_sink
    ship = Ship.new(2)

    ship.hit
    ship.hit

    assert_equal true, ship.sunk
  end 


end
