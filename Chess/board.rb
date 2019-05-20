require_relative './pieces/piece.rb'

class Board
  attr_accessor :rows
  def initialize
    @rows = setup_board
  end

  def setup_board
    # (color, board, pos)
    rows = Array.new(8) {Array.new(8) {nil}}

    (0...rows.length).each do |row_i|
      (0...rows.length).each do |col_j|
        if (row_i >= 0 && row_i <= 1) || (row_i >= 6 && row_i <= 7)
          rows[row_i][col_j] = Piece.new('gray', self, [row_i, col_j])
        end
      end
    end

    rows
  end
  
end


if __FILE__ == $PROGRAM_NAME
  b = Board.new
  p b.rows
end