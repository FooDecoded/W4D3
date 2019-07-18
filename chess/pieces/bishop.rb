require_relative "piece.rb"
require_relative "slidable.rb"

class Bishop < Piece
  include Slidable
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :B
  end
  def move_dirs
    DIAGONAL_MOVES
  end 
end