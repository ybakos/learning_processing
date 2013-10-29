class Ball {

  static final int MIN_SPEED = -5;
  static final int MAX_SPEED = 5;
  float r;
  float x;
  float y;
  float xspeed;
  float yspeed;

  Ball(float r) {
    this.r = r;
    x = random(width);
    y = random(height);
    xspeed = random(MIN_SPEED, MAX_SPEED);
    yspeed = random(MIN_SPEED, MAX_SPEED);
  }

  void move() {
    x += xspeed;
    y += yspeed;
    if (x > width || x < 0) {
      xspeed *= -1;
    }
    if (y > height || y < 0) {
      yspeed *= -1;
    }
  }

  void draw() {
    stroke(255);
    fill(100, 50);
    ellipse(x, y, diameter(), diameter());
  }

  float diameter() {
    return 2 * r;
  }

}