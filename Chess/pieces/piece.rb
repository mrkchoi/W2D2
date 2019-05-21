class Piece
  attr_reader  :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def inspect
    "P"
  end
end

