// Learning Processing Example 10, "Rain Game."

final int NUMBER_OF_DROPS = 50;
Timer timer;
Ball ball1;
Ball ball2;
Drop[] drops = new Drop[NUMBER_OF_DROPS];


void setup() {
  size(400, 400);
  timer = new Timer(5000);
  timer.start();
  ball1 = new Ball(64);
  ball2 = new Ball(32);
  for (int i = 0; i < NUMBER_OF_DROPS; ++i) {
    drops[i] = new Drop();
  }
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
  for (int i = 0; i < NUMBER_OF_DROPS; ++i) {
    drops[i].move();
    drops[i].draw();
  }
}
