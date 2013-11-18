class Rotater {

  float x, y;
  float theta;
  float speed;
  float width;

  Rotater(float x, float y, float speed, float width) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.width = width;
  }

  void spin() {
    theta += speed;
  }

  void draw() {
    rectMode(CENTER);
    stroke(0);
    fill(100, 100);
    pushMatrix();
    translate(x, y);
    rotate(theta);
    rect(0, 0, width, width);
    popMatrix();
  }

}