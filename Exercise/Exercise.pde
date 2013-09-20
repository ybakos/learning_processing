// Exercise 4-4b. Reproducing images and using variables.

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  stroke(255);
  line(width / 2, height / 2, width / 2, 0);
  line(width / 2, height / 2, 0, height);
  line(width / 2, height / 2, width, height);
}