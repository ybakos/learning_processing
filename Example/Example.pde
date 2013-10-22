// Learning Processing Example 7-4

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  stroke(0);
  fill(distance(0, 0, mouseX, mouseY));
  rect(0, 0, width / 2 - 1, height / 2 - 1);
  fill(distance(width, 0, mouseX, mouseY));
  rect(width / 2, 0, width / 2 - 1, height / 2 - 1);
  fill(distance(0, height, mouseX, mouseY));
  rect(0, height / 2, width / 2 - 1, height / 2 - 1);
  fill(distance(width, height, mouseX, mouseY));
  rect(width / 2, height / 2, width / 2 - 1, height / 2 - 1);
}

// Pythagoras to the rescue!
float distance(float x1, float x2, float y1, float y2) {
  float dx = x1 - x2;
  float dy = y1 - y2;
  return sqrt(dx * dx + dy * dy);
}