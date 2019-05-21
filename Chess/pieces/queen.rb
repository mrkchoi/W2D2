require_relative './piece.rb'
require_relative "./modules/slideable.rb"

class Queen < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    :Q
  end

  def move_dirs
    
  end
  
end