require "minitest/emoji"
require "minitest/autorun"
require "./lib/board"
require './test/helper_test'

class BoardMinitest < Minitest::Test
  def test_it_exist
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_can_make_a_board_with_cells
    board = Board.new

    board_grid = board.make_board_grid

    assert_equal Cell, board_grid[0][0].class
  end

end

# what else can  I test?
