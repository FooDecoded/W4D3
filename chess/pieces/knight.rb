require_relative "piece.rb"


class Knight < Piece

  def initialize(color, board, pos)
    super
    @symbol = :Kn
  end
end