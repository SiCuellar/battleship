require "minitest/autorun"
require "minitest/emoji"
require "./lib/cell.rb"

class CellMinitest < Minitest::Test
  def test_it_exist
    cell = Cell.new("A3")

    assert_instance_of Cell, cell
  end

  def test_it_has_attributes
    cell = Cell.new("A3", )

end
