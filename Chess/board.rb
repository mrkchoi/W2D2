require_relative './pieces/null_piece.rb'
require_relative './pieces/piece.rb'

require_relative './pieces/rook.rb'
require_relative './pieces/queen.rb'
require_relative './pieces/pawn.rb'
require_relative './pieces/knight.rb'
require_relative './pieces/king.rb'
require_relative './pieces/bishop.rb'


class Board
  attr_accessor :rows
  def initialize
    @rows = setup_board
  end

  def setup_board
    # (color, board, pos)
    rows = Array.new(8) {Array.new(8) {NullPiece.instance}}
    
    (0...rows.length).each do |row_i|
      (0...rows.length).each do |col_i|

        # place rooks
        if (row_i == 0 && col_i === 0) || (row_i == 0 && col_i === 7)
          rows[row_i][col_i] = Rook.new('white', self, [row_i, col_i])
        elsif (row_i == 7 && col_i === 0) || (row_i == 7 && col_i === 7)
          rows[row_i][col_i] = Rook.new('black', self, [row_i, col_i])
        # place knights
        elsif (row_i == 0 && col_i === 1) || (row_i == 0 && col_i === 6)
          rows[row_i][col_i] = Knight.new('white', self, [row_i, col_i])
        elsif (row_i == 7 && col_i === 1) || (row_i == 7 && col_i === 6)
          rows[row_i][col_i] = Knight.new('black', self, [row_i, col_i])
        # place bishops
        elsif (row_i == 0 && col_i === 2) || (row_i == 0 && col_i === 5)
          rows[row_i][col_i] = Bishop.new('white', self, [row_i, col_i])
        elsif (row_i == 7 && col_i === 2) || (row_i == 7 && col_i === 5)
          rows[row_i][col_i] = Bishop.new('black', self, [row_i, col_i])
        # place queens
        elsif (row_i == 0 && col_i === 3)
          rows[row_i][col_i] = Queen.new('white', self, [row_i, col_i])
        elsif (row_i == 7 && col_i === 3)
          rows[row_i][col_i] = Queen.new('black', self, [row_i, col_i])
        # place kings
        elsif (row_i == 0 && col_i === 4)
          rows[row_i][col_i] = King.new('white', self, [row_i, col_i])
        elsif (row_i == 7 && col_i === 4)
          rows[row_i][col_i] = King.new('black', self, [row_i, col_i])
        elsif row_i == 1
          rows[row_i][col_i] = Pawn.new('white', self, [row_i, col_i])
        elsif row_i == 6
          rows[row_i][col_i] = Pawn.new('black', self, [row_i, col_i])
        end
      end
    end

    rows
  end

  def move_piece(start_pos, end_pos)
    st_x,st_y=start_pos
    ed_x,ed_y=end_pos
    raise BoardMoveError.new("No piece at start position") unless @rows[st_x][st_y].is_a?(Piece)
    raise BoardMoveError.new("Can not move there") if @rows[ed_x][ed_y].is_a?(Piece)
    @rows[st_x][st_y], @rows[ed_x][ed_y] = @rows[ed_x][ed_y],@rows[st_x][st_y]
  end 
  
end
class BoardMoveError < StandardError ; end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  p b.rows
end