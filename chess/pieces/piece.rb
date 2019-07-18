class Piece
  attr_reader :board, :color     # Added
  attr_accessor :pos     # Added
  
  def initialize(color, board, pos)
    @symbol = :p
    @color = color
    @board = board
    @pos = pos
    board.add_piece(self, pos)      # Added
  end
  
  def to_s
    @symbol.to_s
  end

  def inspect
    
  end
  
  def empty? 
      # self.color == :nil ? true : false
      false # Added
  end

  def valid_moves
    
  end

  def pos=(val)
    self.pos = val
  end

  def symbol
    self.color
  end

  private
  def move_into_check?
    #check if puts king into check
  end
end

