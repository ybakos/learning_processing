// Learning Processing Exercise 14-6. Rotating a line around its center.

float theta = 0.0;

void setup() {
  size(400, 400);
}

void draw() {
  background(33);
  translate(width / 2, height / 2);
  rotate(theta);
  stroke(200);
  line(-100, 100, 100, -100);
  stroke(255);
  fill(random(0, 255));
  ellipse(-100, 100, 10, 10);
  ellipse(100, -100, 10, 10);
  theta += 0.01;
}