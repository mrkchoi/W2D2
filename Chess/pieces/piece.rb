class Piece
  attr_reader  :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end
  def to_s
  end

  def emtpy?
  end

  def valid_moves
  end

  def pos=(val)
  end

  def symbol
  end

  def inspect
    "P"
  end

  private
  def move_into_check?
  end

end


class Rook < Piece
  include Slidable
end
