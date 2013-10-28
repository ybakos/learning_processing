class Catcher {

  float r;
  float x;
  float y;

  Catcher(float r) {
    this.r = r;
    x = 0;
    y = 0;
  }

  Catcher(float x, float y, float r) {
    this.r = r;
    this.x = x;
    this.y = y;
  }

  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(x, y, r * 2, r * 2);
  }

}