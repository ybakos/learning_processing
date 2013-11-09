// Learning Processing Example 13-9. Two-dimensional grid of gray points.

final int SIZE = 800;
final int ROWS = SIZE;
final int COLUMNS = SIZE;

int[][] points = new int[ROWS][COLUMNS];

void setup() {
  size(SIZE, SIZE);
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLUMNS; ++j) {
      points[i][j] = (int)random(255);
    }
  }
}

void draw() {
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLUMNS; ++j) {
      stroke(points[i][j]);
      point(i, j);
    }
  }
}
