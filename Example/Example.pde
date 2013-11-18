// Learning Processing Example 14-15. Rotating objects in a collection independently.

final int NUMBER_OF_ROTATERS = 200;
Rotater[] rotaters = new Rotater[NUMBER_OF_ROTATERS];

void setup() {
  size(400, 400, P3D);
  for (int i = 0; i < NUMBER_OF_ROTATERS; ++i) {
    rotaters[i] = new Rotater(random(width), random(height), random(-0.1, 0.1), random(48));
  }
}

void draw() {
  background(200);
  for (int i = 0; i < NUMBER_OF_ROTATERS; ++i) {
    rotaters[i].spin();
    rotaters[i].draw();
  }
}

