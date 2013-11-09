class Cell {

  float x, y;
  float w, h;
  float angle;

  Cell(float x, float y, float w, float h, float angle) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.angle = angle;
  }

  void oscillate() {
    angle += 0.02;
  }

  void display() {
    stroke(255);
    fill(127 + 127 * sin(angle));
    rect(x, y, w, h);
  }

}