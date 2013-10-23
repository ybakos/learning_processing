public class Ball {

  private static final float DAMPER = -0.95;

  public float x = 100;
  public float y = 0;
  public float speed = 0;

  public Ball() {
    x = width / 2;
    y = height / 2;
    speed = 1;
  }

  public Ball(int x, int y, int speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
  }

  public void draw() {
    fill(0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 10, 10);
  }

  public void move() {
    y = y + speed;
    speed = speed + GRAVITY;
  }

  public boolean onGround() {
    return y >= height;
  }

  public void bounce() {
    speed = speed * DAMPER;
  }

}