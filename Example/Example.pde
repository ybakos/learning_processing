// Learning Processing Example 13-6. Oscillation.

float theta = 0;

void setup() {
  size(400, 400);
  background(200);
}

void draw() {
  background(200);
  float x = (sin(theta) + 1) * (width / 2);
  theta += 0.05;
  fill(33);
  stroke(0);
  line(width / 2, 0, x, height / 2);
  ellipse(x, height / 2, 16, 16);
}