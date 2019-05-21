require_relative './piece.rb'
require_relative "./modules/slideable.rb"

class Rook < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    if @color == 'white'
      # white
      "\u2656".force_encoding('utf-8')
    else
      # black
      "\u265C".force_encoding('utf-8')
    end
  end

  def move_dirs
    
  end
  
end