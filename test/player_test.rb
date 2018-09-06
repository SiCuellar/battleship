require "minitest/autorun"
require "minitest/emoji"
require './test/helper_test'
require "./lib/Player"

class PlayerTest < Minitest::Test
  def test_it_exist
    player = Player.new

    assert_instance_of Player, player
  end

  def test_it_can_start_with_new_board
    player = Player.new

    assert_instance_of Board, player.board
  end

  def test_it_can_place_ship
    skip
    player = Player.new

    player.player_ship_placement_input("A1")
    assert player.ship?("A1")
  end
end
