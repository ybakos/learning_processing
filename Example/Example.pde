// Learning Processing Example 10, "Rain Game."

final int MAX_NUMBER_OF_DROPS = 1000;
Timer timer;
Catcher catcher;
Drop[] drops;
int totalDrops = 0;

void setup() {
  size(400, 400);
  catcher = new Catcher(32);
  drops = new Drop[MAX_NUMBER_OF_DROPS];
  timer = new Timer(2000);
  timer.start();
}

void draw() {
  background(200);
  catcher.setLocation(mouseX, mouseY);
  catcher.draw();
  if (timer.isFinished()) {
    drops[totalDrops] = new Drop();
    ++totalDrops;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }
    timer.start();
  }
  for (int i = 0; i < totalDrops; ++i) {
    drops[i].move();
    drops[i].draw();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
  }
}
