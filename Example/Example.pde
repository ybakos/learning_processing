// Learning Processing Example 5-6

int x = 0;
int speed = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  if (x >= width || x < 0) speed *= -1;
  x += speed;

  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
}
