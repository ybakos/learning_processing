class Ball {

  static final float INITIAL_SPEED = 0.0;
  float x;
  float y;
  float speed;
  float width;

  Ball(float x, float y, float width) {
    this.x = x;
    this.y = y;
    this.width = width;
    speed = INITIAL_SPEED;
  }

  void gravity() {
    speed += GRAVITY;
  }

  void move() {
    y += speed;
    if (y > height) {
      speed *= -0.95;
      y = height;
    }
  }

  void display() {
    fill(200);
    noStroke();
    ellipse(x, y, width, width);
  }

}