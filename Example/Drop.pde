class Drop {

  static final int DEFAULT_RADIUS = 8;
  float x;
  float y;
  float speed;
  color c;
  float r;

  Drop() {
    r = DEFAULT_RADIUS;
    x = random(width);
    y = r * -4;
    speed = random(1, 5);
    c = color(50, 100, 150);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    return (y > height + r * 4);
  }

  void draw() {
    fill(c);
    noStroke();
    for (int i = 2; i < r; ++i) {
      ellipse(x, y + i * 4, i * 2, i * 2);
    }

  }

}