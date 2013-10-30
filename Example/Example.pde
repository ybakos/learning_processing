// Learning Processing Example 10, "Rain Game."

final int MAX_NUMBER_OF_DROPS = 1000;
Timer timer;
Ball ball1;
Ball ball2;
Drop[] drops = new Drop[MAX_NUMBER_OF_DROPS];
int totalDrops = 0;

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
  drops[totalDrops] = new Drop();
  ++totalDrops;
  if (totalDrops >= drops.length) {
    totalDrops = 0;
  }
  for (int i = 0; i < totalDrops; ++i) {
    drops[i].move();
    drops[i].draw();
  }
}
