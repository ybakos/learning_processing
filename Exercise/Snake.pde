// A simple snake.

public class Snake {

  public static final int TRAIL_LENGTH = 50;
  int[] xpos;
  int[] ypos;

  public Snake() {
    xpos = new int[TRAIL_LENGTH];
    ypos = new int[TRAIL_LENGTH];
    initializeTrail();
  }

  public void saveLatestPosition(int newX, int newY) {
    xpos[TRAIL_LENGTH - 1] = newX;
    ypos[TRAIL_LENGTH - 1] = newY;
  }

  public void draw() {
    for (int i = 0; i < TRAIL_LENGTH; ++i) {
      noStroke();
      fill(255 - i * 5);
      ellipse(xpos[i], ypos[i], i, i);
    }
  }

  private void initializeTrail() {
    for (int i = 0; i < TRAIL_LENGTH; ++i) {
      xpos[i] = 0;
      ypos[i] = 0;
    }
  }

  private void move(int newX, int newY) {
    shiftExistingPositions();
    saveLatestPosition(newX, newY);
  }

  private void shiftExistingPositions() {
    for (int i = 0; i < TRAIL_LENGTH - 1; ++i) {
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }
  }

}