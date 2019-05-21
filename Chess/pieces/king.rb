require_relative './piece.rb'
require_relative "./modules/stepable.rb"

class King < Piece
  include Stepable
  attr_reader :symbol, :possible_moves

  def symbol
    if @color == 'white'
      # white
      "\u2654".force_encoding('utf-8')
    else
      # black
      "\u265A".force_encoding('utf-8')
    end
  end

  def move_dirs
    
  end

  private

  def possible_moves
    @possible_moves = []
  end
  
end