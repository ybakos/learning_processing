// Exercise 8-5. A bouncing ball, refactoring Example 5-9 with a class.

Ball ball;

final float GRAVITY = 0.1;

void setup() {
  size(400, 400);
  ball = new Ball(100, 0, 0);
}

void draw() {
  background(255);
  ball.move();
  ball.draw();
  if (ball.onGround()) ball.bounce();
}
