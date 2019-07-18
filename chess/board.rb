require_relative "pieces/piece.rb"
require_relative "pieces/null_piece.rb"
require_relative "pieces/king.rb"
require_relative "pieces/knight.rb"
require_relative "pieces/bishop.rb"
require_relative "pieces/queen.rb"
require_relative "pieces/rook.rb"

class Board
  attr_reader :rows, :sentinel
  def initialize
    @rows = Array.new(8) { Array.new(8) } # NullPieces
    @sentinel = NullPiece.instance
    fill_board 
  end

  def inspect
    
  end

  def fill_board() # Added
    pawns = Array.new(8, Piece)
    supers = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

    @rows.each_with_index do |row, row_idx|
      row.each_with_index do |el, col_idx|
       
        if row_idx == 0 # [0,7].include?(row_idx)
          class_name = supers[col_idx]
          color_name = :w
        elsif row_idx == 7 # [1,6].include?(row_idx)
          class_name = supers[col_idx]
          color_name = :b
        elsif row_idx == 1
          class_name = pawns[col_idx]
          color_name = :w
        elsif row_idx == 6
          class_name = pawns[col_idx]
          color_name = :b
        end
     
        if row_idx.between?(2, 5)
          s = @sentinel
          row[col_idx] = s
        else
          row[col_idx] = class_name.new(color_name, self, [row_idx, col_idx])      
        end

      end
    end
  end

  def [](pos)
    x, y = pos
    @rows[x][y] 
  end

  def []=(pos, value)
    x, y = pos
    @rows[x][y] = value
  end

  def move_piece(color, start_pos, end_pos)
    raise "No Piece" if self[start_pos].symbol == " "
    raise "Can't move to this place" if end_pos.all? { |x| x.between?(0, 7) }
    self[end_pos] = self[start_pos]
    # might delte peice
    self[end_pos].pos = end_pos
    self[start_pos] = @sentinel
  end

  def valid_pos?(pos)
  end

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
    king_pos = find_king(color)
    
  end

  def find_king(color)
    @rows.each_with_index do |row, row_idx|
      row.each_with_index do |piece, col_idx|
        return [row_idx, col_idx] if piece.color == col_idx && piece.symbol == :Ki
      end
    end
  end

  def pieces 
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end


end

# if $PROGRAM_NAME == board.rb
#   puts "hello"
# endß

