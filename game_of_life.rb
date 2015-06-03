class GameOfLife
  # Any live cell with fewer than two live neighbours dies, as if caused by under-population.
  # Any live cell with two or three live neighbours lives on to the next generation.
  # Any live cell with more than three live neighbours dies, as if by overcrowding.
  # Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

  attr_accessor :cells

  def initialize
    @cells = []
  end

  def step
    rule_one_two_three
  end

  def num_neighbors(cell)
    (cells - [cell]).count do |c|
      cell.neighbor? c
    end
  end

  def rule_one_two_three
    self.cells = cells.map { |cell| cell_dies?(cell) ? nil : cell }.compact
  end

  def cell_dies?(cell)
    num_neighbors(cell) < 2 || num_neighbors(cell) > 3
  end

end
