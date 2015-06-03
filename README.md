# Cell Based Game of Life Implementation

Ruby implementation of [Conway's game of life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) using a list of live cells instead of a 2D array.

### The Rules

1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
1. Any live cell with two or three live neighbours lives on to the next generation.
1. Any live cell with more than three live neighbours dies, as if by overcrowding.
1. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
