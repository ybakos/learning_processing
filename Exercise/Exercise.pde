// Exercise 5-10. A bouncing ball with gravity.

final int WIDTH = 400;
final int HEIGHT = 800;
final int SIDE_LENGTH = 10;
final int RADIUS = SIDE_LENGTH / 2;
final int BOTTOM = HEIGHT - RADIUS;
final color red = color(255, 0, 0);
final color black = color(0);
final color white = color(255);
float x = 100;
float y = 0;
float speed = 0;
float gravity = 0.1;
final float DAMPENING = -0.6;

void setup() {
  size(WIDTH, HEIGHT);
}

void draw() {
  background(white);
  noStroke();
  rectMode(CENTER);
  displayStats();
  drawFallingBrick();
  moveBrick();
  accelerate();
  if (y >= BOTTOM) bounce();
}

void displayStats() {
  fill(black);
  text("speed: " + speed, 10, 10);
  text("height: " + (height - y - RADIUS), 10, 30);
}

void drawFallingBrick() {
  if (abs(mouseX - x) < RADIUS && abs(mouseY - y) < RADIUS) {
    fill(red);
  } else fill(black);
  rect(x, y, SIDE_LENGTH, SIDE_LENGTH);
}

void moveBrick() {
  y = round(constrain(y + speed, 0, height - RADIUS));
}

void accelerate() {
  speed = speed + gravity;
}

void bounce() {
  speed *= DAMPENING;
}