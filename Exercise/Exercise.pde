// Learning Processing Exercise 10-4, extending "Rain Game."

final int MAX_NUMBER_OF_DROPS = 1000;
Timer timer;
Catcher catcher;
Drop[] drops;
int totalDrops = 0;

int points = 10;

void setup() {
  size(400, 400);
  prepareGame();
}

void draw() {
  background(200);
  catcher.setLocation(mouseX, mouseY);
  catcher.draw();
  releaseDropIntermittently();
  drawAllDropsAndCheckForCaughtDrops();
  drawScore();
}

void prepareGame() {
  catcher = new Catcher(32);
  drops = new Drop[MAX_NUMBER_OF_DROPS];
  timer = new Timer(2000);
  timer.start();
}

void releaseDropIntermittently() {
  if (timer.isFinished()) {
    drops[totalDrops] = new Drop();
    ++totalDrops;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }
    timer.start();
  }
}

void drawAllDropsAndCheckForCaughtDrops() {
  for (int i = 0; i < totalDrops; ++i) {
    drops[i].move();
    drops[i].draw();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
    if (drops[i].reachedBottom()) {
      --points;
    }
  }
}

void drawScore() {
  pushStyle();
  stroke(255, 255, 0);
  fill(200, 200, 0);
  ellipse(0, 0, 10 * points, 10 * points);
  popStyle();
}