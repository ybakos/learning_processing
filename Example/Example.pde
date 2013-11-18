// Learning Processing Example 14-18. A more complex solar system.

Planet[] planets = new Planet[8];

void setup() {
  size(400, 400, P3D);
  for (int i = 0; i < planets.length; ++i) {
    planets[i] = new Planet(20 + i * 10, i + 8);
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
