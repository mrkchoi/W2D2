require_relative './piece.rb'
require_relative "./modules/slideable.rb"

class Rook < Piece
  include Slideable
  attr_reader :symbol

  def symbol
    :R
  end

  def move_dirs
    
  end
  
end