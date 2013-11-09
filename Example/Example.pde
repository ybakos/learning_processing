// Learning Processing Example 13-10. Two-dimensional grid of oscillating cells.

final int ROWS = 20;
final int COLS = 20;

Cell[][] grid = new Cell[ROWS][COLS];

void setup() {
  size(400, 400);
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLS; ++j) {
      grid[i][j] = new Cell(i * 20, j * 20, 20, 20, i + j);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLS; ++j) {
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
