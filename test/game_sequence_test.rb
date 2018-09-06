require "minitest/autorun"
require "minitest/emoji"
require './test/helper_test'
require "./lib/game_sequence"

class GameSequenceTest < Minitest::Test

  def test_it_exist
    game_sequence = GameSequence.new

    assert_instance_of GameSequence, game_sequence
  end

  def test_it_contains_other_classes
    game_sequence = GameSequence.new

    assert_instance_of Board, game_sequence.player_board
  end

end
