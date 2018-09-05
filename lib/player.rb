require "./lib/board"
class Player
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def player_ship_input
    coordinate_input = gets.chomp
    grid_board = @board.make_board_grid.flatten
    binding.pry
     grid_board.map do |cell|
      if cell.point == coordinate_input
          cell.ship = true
      end
    end
  end


end
