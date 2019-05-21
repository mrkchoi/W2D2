require_relative './display.rb'
require_relative './board.rb'


if __FILE__ == $PROGRAM_NAME
  # String.color_samples 

  d = Display.new(Board.new)
  hold=[]
  while true
    d.render
    d.cursor.get_input
    d.check_cursor_pos

    # pos=output
    # if pos!=nil
    #   hold << pos
    # end
    # if hold.length==2
    #   d.board.move(hold[0],hold[1])
    # end

  end 

end
