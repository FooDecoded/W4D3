require_relative "piece.rb"
require_relative "slidable.rb"

class Queen < Piece
  include Slidable
  def initialize(color, board, pos)
    super
    @symbol = :Q
  end
  def move_dirs
    HORIZONTAL_VERTICAL_MOVES + DIAGONAL_MOVES
  end 
end