class Planet {

  float theta;
  float diameter;
  float distance;
  float orbitSpeed;

  Moon[] moons;

  Planet(float distance, float diameter, int numberOfMoons) {
    this.distance = distance;
    this.diameter = diameter;
    theta = 0;
    orbitSpeed = random(0.01, 0.03);
    moons = new Moon[numberOfMoons];
    for (int i = 0; i < moons.length; ++i) {
      moons[i] = new Moon(diameter + i * 5, i + 2);
    }
  }

  void update() {
    theta += orbitSpeed;
    for (int i = 0; i < moons.length; ++i) {
      moons[i].update();
    }
  }

  void draw() {
    pushMatrix();
    rotate(theta);
    translate(distance, 0);
    noStroke();
    fill(175, 127);
    sphere(diameter);
    for (int i = 0; i < moons.length; ++i) {
      moons[i].draw();
    }
    popMatrix();
  }

}