// Learning Processing Example 9-11.

final float GRAVITY = 0.1;

Ball[] balls = new Ball[1];

void setup() {
  size(400, 400);
  balls[0] = new Ball(50, 0, 16);
}

void draw() {
  background(100);
  for (int i = 0; i < balls.length; ++i) {
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
}

void mousePressed() {
  Ball b = new Ball(mouseX, mouseY, 10);
  balls = (Ball[])append(balls, b);
}
