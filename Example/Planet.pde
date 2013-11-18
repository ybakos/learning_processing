class Planet {

  float theta;
  float diameter;
  float distance;
  float orbitSpeed;

  Planet(float distance, float diameter) {
    this.distance = distance;
    this.diameter = diameter;
    theta = 0;
    orbitSpeed = random(0.01, 0.03);
  }

  void update() {
    theta += orbitSpeed;
  }

  void draw() {
    pushMatrix();
    rotate(theta);
    translate(distance, 0);
    stroke(0);
    fill(175);
    ellipse(0, 0, diameter, diameter);
    popMatrix();
  }

}