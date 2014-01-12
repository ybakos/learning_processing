class Particle {

  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float life;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    xSpeed = random(-1, 1);
    ySpeed = random(-2, 0);
    life = 255;
  }

  void run() {
    x += xSpeed;
    y += ySpeed;
  }

  void gravity() {
    ySpeed += 0.1;
  }

  void stop() {
    xSpeed = ySpeed = 0;
  }

  boolean finished() {
    life -= 2.0;
    return (life < 0);
  }

  void display() {
    stroke(33);
    fill(0, life);
    ellipse(x, y, 10, 10);
  }

}