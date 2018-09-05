require "./lib/cell"

class Board
  attr_reader :board_grid
  def initialize
    @board_grid = []
  end

  def make_board_grid
    cells = []
    cells.push('A1', 'A2', 'A3', 'A4',
              'B1', 'B2', 'B3', 'B4',
              'C1', 'C2', 'C3', 'C4',
             'D1', 'D2', 'D3', 'D4')

    @board_grid = cells.map do |point|
      Cell.new(point)
    end
    @board_grids = @board_grid.each_slice(4).to_a
  end
end
