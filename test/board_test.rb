require "minitest/emoji"
require "minitest/autorun"
require "./lib/board"

class BoardMinitest < Minitest::Test
  def test_it_exist
    board =Board.new("player/comp")

    assert_instance_of Board, board
  end

  def test_it_can_make_a_board
    skip
    board = Board.new()

  end
end
