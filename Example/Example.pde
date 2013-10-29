// Learning Processing Example 10, "Rain Game."

Ball ball1;
Ball ball2;

void setup() {
  size(400, 400);
  ball1 = new Ball(64);
  ball2 = new Ball(32);
}

void draw() {
  background(0);
  ball1.move();
  ball2.move();
  ball1.draw();
  ball2.draw();
}
