require_relative "piece.rb"


class King < Piece

  def initialize(color, board, pos)
    super
    @symbol = :Ki
  end
end