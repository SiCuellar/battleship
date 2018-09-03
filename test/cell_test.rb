require "minitest/autorun"
require "minitest/emoji"
require "./lib/cell.rb"

class CellMinitest < Minitest::Test
  def test_it_exist
    cell = Cell.new("value")

    assert_instance_of Cell, cell
  end

end
