// Learning Processing Example 15-15. Mapping an image to 3D.

PImage hoff;
final int CELL_SIZE = 2;
int columns;
int rows;

void setup() {
  hoff = loadImage("hoff.jpg");
  size(hoff.width, hoff.height, P3D);
  columns = width / CELL_SIZE;
  rows = height / CELL_SIZE;
}

void draw() {
  background(0);
  loadPixels();
  //translate(width / 2, height / 2);
  rotateX(PI * (float(mouseY) / height));
  for (int i = 0; i < columns; ++i) {
    for (int j = 0; j < rows; ++j) {
      int x = i * CELL_SIZE + CELL_SIZE / 2;
      int y = j * CELL_SIZE + CELL_SIZE / 2;
      int loc = x + y * width;
      color c = hoff.pixels[loc];
      float z = (mouseX / (float)width) * brightness(hoff.pixels[loc]) - 100.0;
      pushMatrix();
      translate(x, y, z);

      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, CELL_SIZE, CELL_SIZE);
      popMatrix();
    }
  }
}
