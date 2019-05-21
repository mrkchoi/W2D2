require 'colorize'
require_relative "board.rb"

require_relative 'cursor.rb'

class Display
  def initialize(board)
    @cursor=Cursor.new([0,0],board)

  end
  def []=
  end
  

end