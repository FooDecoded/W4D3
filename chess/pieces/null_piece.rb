require_relative "piece.rb"
require "singleton"

class NullPiece < Piece
  attr_reader :symbol # Added
  include Singleton

  def initialize() # Added
    @symbol = " "
    @color = :none
  end

  def empty?  # Added
    true
  end

  def moves 
    []
  end

end