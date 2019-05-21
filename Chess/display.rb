require 'colorize'
require_relative "board.rb"

require_relative 'cursor.rb'

class Display
  attr_accessor :board, :cursor
  def initialize(board)
    @cursor=Cursor.new([0,0],board)
    @board = board
  end

  def render
    system('clear')
    @board.rows.each_with_index do |row, row_i|
      row.each_with_index do |col, col_i|
        cursor_x, cursor_y = @cursor.cursor_pos
        piece_symbol = @board.rows[row_i][col_i].symbol

        if row_i == cursor_x && col_i == cursor_y
          print " #{piece_symbol} ".colorize(:background => :light_yellow)
        elsif row_i.even? && col_i.even?
          print " #{piece_symbol} ".colorize(:background => :white)
        elsif row_i.even? && col_i.odd?
          print " #{piece_symbol} ".colorize(:background => :cyan)
        elsif row_i.odd? && col_i.even?
          print " #{piece_symbol} ".colorize(:background => :cyan)
        elsif row_i.odd? && col_i.odd?
          print " #{piece_symbol} ".colorize(:background => :white)
        end

      end
      print "\n"
    end
  end

  def check_cursor_pos
    if @cursor.selected_pos.length == 2
      start_pos, end_pos = @cursor.selected_pos
      @board.move_piece(start_pos, end_pos)
      @cursor.reset_selected_pos
    end
  end

end


# if __FILE__ == $PROGRAM_NAME
 
# end
