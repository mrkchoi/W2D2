require_relative './piece.rb'
require_relative "./modules/stepable.rb"

class King < Piece
  include Stepable
  attr_reader :symbol

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
  
end