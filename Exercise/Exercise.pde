// Learning Processing Exercise 14-11. A 3D solar system with moons.

Planet[] planets = new Planet[8];

void setup() {
  size(400, 400, P3D);
  for (int i = 0; i < planets.length; ++i) {
    planets[i] = new Planet(40 + i * 20, i + 8, 2);
  }
}

void draw() {
  background(33);
  noStroke();
  lights();
  translate(width / 2, height / 2);
  rotateX(PI / 3);
  fill(200, 200, 0, 127);//stroke(200, 200, 0, 127);
  sphere(20);
  for (int i = 0; i < planets.length; ++i) {
    planets[i].update();
    planets[i].draw();
  }
}
