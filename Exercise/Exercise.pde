// Learning Processing Exercise 10-4, extending "Rain Game."

GameState gameState;

final int MAX_NUMBER_OF_DROPS = 1000;
final int FREQUENCY_IN_MILLISECONDS = 10;
Timer timer;
Catcher catcher;
Drop[] drops;
int totalDrops = 0;

int points = 10;
int backgroundShade = 200;

void setup() {
  size(400, 400);
  prepareGame();
  gameState = GameState.START;
}

void draw() {
  if (gameState == GameState.START) drawStartScreen();
  else if (gameState == GameState.PLAYING) play();
  else if (gameState == GameState.OVER) drawGameOver();
}

void drawStartScreen() {
  if (random(2) < .01) background(255); // occasional lightning
    else background(100);
  releaseDropIntermittently();
  drawAllDrops();
  // masthead and click prompt
  textSize(50);
  textLeading(60);
  fill(255, 50);
  text("Rain\nGame", width / 8, height / 8);
  textSize(20);
  text("Click to Play", width / 8, height - 40);
}

void play() {
  background(backgroundShade);
  catcher.setLocation(mouseX, mouseY);
  catcher.draw();
  checkForCaughtDrops();
  releaseDropIntermittently();
  drawAllDrops();
  drawScore();
}

void drawGameOver() {
  println("OVER");
}

void prepareGame() {
  catcher = new Catcher(32);
  drops = new Drop[MAX_NUMBER_OF_DROPS];
  for (int i = 0; i < drops.length; ++i) {
    drops[i] = new Drop();
  }
  timer = new Timer(FREQUENCY_IN_MILLISECONDS);
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

void drawAllDrops() {
  for (int i = 0; i < totalDrops; ++i) {
    drops[i].move();
    drops[i].draw();
  }
}

void checkForCaughtDrops() {
  for (int i = 0; i < totalDrops; ++i) {
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
    if (drops[i].reachedBottom()) {
      --points;
      backgroundShade -= 20;
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

void mouseReleased() {
  if (gameState == GameState.START) {
    timer = new Timer(2000);
    totalDrops = 0;
    gameState = GameState.PLAYING;
  }
}