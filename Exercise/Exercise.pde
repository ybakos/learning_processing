// Exercise 6-8. A grid of squares.

final int WINDOW_SIZE = 400;
final int NUMBER_OF_SQUARES = 40;
final int SQUARE_SIZE = WINDOW_SIZE / NUMBER_OF_SQUARES;

void setup() {
  size(WINDOW_SIZE, WINDOW_SIZE);
  noStroke();
}

void draw() {
  for(int i = 0; i < NUMBER_OF_SQUARES; ++i) {
    for (int j = 0; j < NUMBER_OF_SQUARES; ++j) {
      float xDistance = abs(mouseX - i * SQUARE_SIZE);
      float yDistance = abs(mouseY - j * SQUARE_SIZE);
      fill(xDistance, yDistance, 200);
      rect(i * SQUARE_SIZE, j * SQUARE_SIZE, SQUARE_SIZE, SQUARE_SIZE);
    }
  }
}
