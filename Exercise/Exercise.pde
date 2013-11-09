// Learning Processing Exercise 13-10. A tic-tac-toe stub.

final int ROWS = 3;
final int COLS = 3;

Cell[][] board = new Cell[ROWS][COLS];

void setup() {
  size(400, 400);
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLS; ++j) {
      board[i][j] = new Cell(j * width / COLS, i * height / ROWS, width / COLS, height / ROWS);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLS; ++j) {
      board[i][j].display();
    }
  }
}

void mousePressed() {
  board[(int)map(mouseY, 0, height, 0, 3)][(int)map(mouseX, 0, height, 0, 3)].activate();
}