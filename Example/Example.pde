// Learning Processing Example 13-8. Recursion.

void setup() {
  size(400, 400);
}

void draw() {
  stroke(33);
  noFill();
  drawCircle(width / 2, height / 2, 200);
}

void drawCircle(float x, float y, float diameter) {
  ellipse(x, y, diameter, diameter);
  if (diameter > 2) {
    drawCircle(x + diameter / 2, y, diameter / 2);
    drawCircle(x - diameter / 2, y, diameter / 2);
  }
}