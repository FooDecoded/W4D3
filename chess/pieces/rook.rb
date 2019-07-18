require_relative "piece.rb"
require_relative "slidable.rb"

class Rook < Piece 
  include Slidable

  def initialize(color, board, pos)
    super
    @symbol = :R
  end

  def move_dirs
    HORIZONTAL_VERTICAL_MOVES
  end
end