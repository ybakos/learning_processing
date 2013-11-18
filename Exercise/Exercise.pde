// Learning Processing Exercise 14-9. Rotating a collection of 3D cubes.

final int NUMBER_OF_CUBES = 50;
Cube[] cubes = new Cube[NUMBER_OF_CUBES];

void setup() {
  size(400, 400, P3D);
  for (int i = 0; i < NUMBER_OF_CUBES; ++i) {
    cubes[i] = new Cube((int)random(width), (int)random(height), (int)random(2, 50), random(10), random(0, 0.1));
  }
}

void draw() {
  background(33);
  for (int i = 0; i < NUMBER_OF_CUBES; ++i) {
    cubes[i].draw();
  }
}

