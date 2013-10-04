// Exercise 5-10. A bouncing ball with gravity.

final float DAMPENING = -0.7;

float x = 100;
float y = 0;

float speed = 0;
float gravity = 0.1;

void setup() {
  size(400, 800);
}

void draw() {
  background(255);
  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(x, y, 10, 10);
  y = constrain(y + speed, 0, height - 10);
  speed = speed + gravity;

  if (y >= height - 10) speed *= DAMPENING;
  println(speed + " " + y);
}