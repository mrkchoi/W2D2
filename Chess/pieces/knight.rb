require_relative "./modules/stepable.rb"
require_relative './piece.rb'

class Knight < Piece
  include Stepable
  attr_reader :symbol

  def symbol
    :k
  end

  def move_dirs
    
  end
  
end