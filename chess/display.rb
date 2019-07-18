require "colorize"
require_relative "cursor.rb"
require_relative "board"


class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render 
    system("clear")
    rows = @board.rows
    x1, y1 = @cursor.cursor_pos
    # x3, y3 = @cursor.selected unless @cursor.selected

    rows.each_with_index do |row, x2|
      row.each_with_index do |piece, y2|
        # print piece.to_s.red + " | "
        if x1 == x2 && y1 == y2
          print piece.to_s.colorize(:red) + " | "
        # elsif x1 == x3 && y1 == y3
        #   puts "selectwed"
        #   print piece.to_s.colorize(:blue) + " | "
        else
          print piece.to_s + " | "        
        end
      end
      print "\n"
    end
    nil
  end

  def render_with_cursor
    # pos = @cursor.cursor_pos
    # rows[]
    render
    until @cursor.get_input == "b"
      render
    end
  end

end
b = Board.new
d = Display.new(b)
d.render_with_cursor