// Learning Processing Example 10, "Rain Game."

Timer timer;
Ball ball1;
Ball ball2;

void setup() {
  size(400, 400);
  timer = new Timer(5000);
  timer.start();
  ball1 = new Ball(64);
  ball2 = new Ball(32);
}

void draw() {
  background(200);
  if (timer.isFinished()) {
    background(random(255));
    timer.start();
  }

  ball1.move();
  ball2.move();
  if (ball1.intersect(ball2)) {
    ball1.highlight();
    ball2.highlight();
  }
  ball1.draw();
  ball2.draw();
}
