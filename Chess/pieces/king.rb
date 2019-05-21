require_relative './piece.rb'
require_relative "./modules/stepable.rb"

class King < Piece
  include Stepable
  attr_reader :symbol

  def symbol
    :K
  end

  def move_dirs
    
  end
  
end