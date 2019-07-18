module Slidable
  HORIZONTAL_VERTICAL_MOVES = [
      [1,0],
      [-1,0],
      [0,1],
      [0,-1]
  ]

  DIAGONAL_MOVES = [
    [1,1],
    [-1, 1],
    [1, -1],
    [-1, -1]
  ]
  
  def moves()
    start = self.pos
    directions = move_dirs().dup
    valid_moves = Array.new(directions.length) { [] }
    directions.map_with_index do |direction, idx|
      end_pos = [x1+x2, y1+y2] 
      x2, y2 = direction
      until pievce || out of range
        x1, y1 = start if 
        if valid_moves
      end
    end
  end
end