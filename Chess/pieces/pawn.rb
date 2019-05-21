require_relative './piece.rb'

class Pawn < Piece
  def symbol
    if @color == 'white'
      # white
      "\u2659".force_encoding('utf-8')
    else
      # black
      "\u265F".force_encoding('utf-8')
    end
  end

  def move_dirs
  end

  def at_start_row?
  end

  def forward_dir
  end

  def forward_steps
  end

  def side_attacks
  end
end