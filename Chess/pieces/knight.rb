require_relative "./modules/stepable.rb"
require_relative './piece.rb'

class Knight < Piece
  include Stepable
  attr_reader :symbol

  def symbol
    if @color == 'white'
      # white
      "\u2658".force_encoding('utf-8')
    else
      # black
      "\u265E".force_encoding('utf-8')
    end
  end

  def move_dirs
    
  end
  
end