require_relative './piece.rb'
require_relative "./modules/slideable.rb"

class Queen < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    if @color == 'white'
      # white
      "\u2655".force_encoding('utf-8')
    else
      # black
      "\u265B".force_encoding('utf-8')
    end
  end

  def move_dirs
    
  end
  
end