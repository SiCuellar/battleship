class Board
  attr_reader :board_grid
  def initialize
    @board_grids = []
  end

  def make_board
    cells = []
    cells << ('A1', 'A2', 'A3', 'A4', 'B1', 'B2', 'B3', 'B4', 'C1', 'C2', 'C3', 'C4', 'D1', 'D2', 'D3', 'D4')
    @board_grids = cells.map do |location|
      cells.new(position)

end
