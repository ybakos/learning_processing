class Bubble {

	float x;
  float y;
  float diameter;
  float speed;
  float r;
  float g;

  Bubble(float r, float g, float diameter) {
    x = random(width);
    y = height;
    this.r = r;
    this.g = g;
    this.diameter = diameter;
  }

  boolean rollover(int mx, int my) {
    return (dist(mx, my, x, y) < diameter / 2);
  }

  void change() {
    r = constrain(r + random(-10, 10), 0, 255);
    g = constrain(g + random(-10, 10), 0, 255);
    diameter = constrain(diameter + random(-2, 4), 4, 72);
  }

  void display() {
    stroke(0);
    fill(r, g, 255, 150);
    ellipse(x, y, diameter, diameter);
  }

  void drift() {
    y += random(-3, -0.1);
    x += random(-1, 1);
    if (y < -diameter * 2) {
      y = height + diameter * 2;
    }
  }

}