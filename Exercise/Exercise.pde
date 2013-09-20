// Exercise 4-4a. Reproducing images and using variables.

final int DIAMETER = 50;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  stroke(0);
  fill(100);
  ellipse(width * 0.25, height * 0.25, DIAMETER, DIAMETER);
  ellipse(width * 0.75, height * 0.25, DIAMETER, DIAMETER);
  ellipse(width * 0.25, height * 0.75, DIAMETER, DIAMETER);
  ellipse(width * 0.75, height * 0.75, DIAMETER, DIAMETER);
}