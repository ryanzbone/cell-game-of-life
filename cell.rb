class Cell

  attr_reader :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def neighbor? cell
    (y == cell.y && (x - cell.x).abs == 1) ||
      (x == cell.x && (y - cell.y).abs == 1) ||
      ((x - cell.x).abs == 1 && (y - cell.y).abs == 1)
  end

  def to_s
    "CELL: #{cell.x}, #{cell.y}"
  end

end
