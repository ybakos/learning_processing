// Learning Processing Example 14-5. Rotating a rectangle.

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  stroke(0);
  fill(100);
  translate(width / 2, height / 2);
  float theta = PI * mouseX / width;
  rotate(theta);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
}