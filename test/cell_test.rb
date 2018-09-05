require "minitest/autorun"
require "minitest/emoji"
require "./lib/cell.rb"
require "./lib/ship"

class CellMinitest < Minitest::Test
  def test_it_exist
    cell = Cell.new("A3")

    assert_instance_of Cell, cell
  end

  def test_it_has_attributes
    cell = Cell.new("A3")

    assert_nil @ship
    refute @miss
    refute @hit
  end

  def test_it_can_take_a_hit
    cell = Cell.new("A3")

    assert_equal "H", cell.hit
  end

  def test_it_can_miss
    cell = Cell.new("A3")

    assert_equal "M", cell.miss
  end

  def test_it_can_switch_state

    cell = Cell.new("A3")
    ship = Ship.new(2)

    cell.ship = ship

    assert_equal "H", cell.state_switch
  end

end
