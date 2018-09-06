require "./lib/board"
class Player
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def player_ship_placement_input(coordinate)
    coordinate_input = coordinate
    grid_board = @board.make_board_grid.flatten
      grid_board.map do |cell|
        if cell.point == coordinate_input
        cell.ship = true
        end
      end
      binding.pry
  end

  def board_grid
    @board.make_board_grid
  end

  def ship?(coordinate)
    grid_board = board_grid.flatten
    grid_board.include?(coordinate) do |cell|
      cell.ship = true
    end
  end

  def print_board
    puts " ===========\n
          . 1 2 3 4  \n
          A #{board_grid[0][0].state} #{board_grid[0][1].state} #{board_grid[0][2].state} #{board_grid[0][3].state}\n
          B #{board_grid[1][0].state} #{board_grid[1][1].state} #{board_grid[1][2].state} #{board_grid[1][3].state}\n
          C #{board_grid[2][0].state} #{board_grid[2][1].state} #{board_grid[2][2].state} #{board_grid[2][3].state}\n
          D #{board_grid[3][0].state} #{board_grid[3][1].state} #{board_grid[3][2].state} #{board_grid[3][3].state}\n
          ===========\n"
  end
end
