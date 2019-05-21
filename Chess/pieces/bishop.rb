require_relative "./modules/slideable.rb"
require_relative './piece.rb'

class Bishop < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    if @color == 'white'
      # white
      "\u2657"
    else
      # black
      "\u265D"
    end

  end

  def move_dirs
    
  end
  
end