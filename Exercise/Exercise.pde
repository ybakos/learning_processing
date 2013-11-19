// Learning Processing Exercise 14-10. A solar system with moons.

Planet[] planets = new Planet[8];

void setup() {
  size(400, 400, P3D);
  for (int i = 0; i < planets.length; ++i) {
    planets[i] = new Planet(40 + i * 20, i + 8, 2);
  }
}

void draw() {
  background(200);
  translate(width / 2, height / 2);
  stroke(0);
  fill(255);
  ellipse(0, 0, 20, 20);
  for (int i = 0; i < planets.length; ++i) {
    planets[i].update();
    planets[i].draw();
  }
}


