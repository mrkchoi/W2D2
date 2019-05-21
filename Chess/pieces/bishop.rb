require_relative "./modules/slideable.rb"
require_relative './piece.rb'

class Bishop < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    :B
  end

  def move_dirs
    
  end
  
end