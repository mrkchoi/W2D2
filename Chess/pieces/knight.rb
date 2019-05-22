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

  def move_diffs
      @move_diffs = [
        [2,1],
        [-2,1],
        [2,-1],
        [-2,-1],
        [1,2],
        [-1,2],
        [1,-2],
        [-1,-2]
      ]
  end
  
end


# (start arry), (end array)
# #can move
# #if end possition has someting you can take
# #compare colors
# pos_moves=@moves_diffs.map{|el| start_arra+el}
