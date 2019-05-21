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

  def move_piece(start_pos, end_pos)
    st_x,st_y=start_pos
    ed_x,ed_y=end_pos
    raise BoardMoveError.new("No piece at start position") unless @rows[st_x][st_y].is_a?(Piece)
    raise BoardMoveError.new("Can not move there") if @rows[ed_x][ed_y].is_a?(Piece)
    @rows[st_x][st_y], @rows[ed_x][ed_y] = @rows[ed_x][ed_y],@rows[st_x][st_y]


    


  end 
  
end
class BoardMoveError < StandardError ; end

#if __FILE__ == $PROGRAM_NAME
  b = Board.new
  p b.rows
  


#end