// Learning Processing Exercise 17-7. A video mirror using text sizes for brightness.

import processing.video.*;

final int SCREEN_WIDTH = 1024;
final int SCREEN_HEIGHT = 768;
final int FPS = 30;
final int SCALE = 16;
final int COLUMNS = SCREEN_WIDTH / SCALE;
final int ROWS = SCREEN_HEIGHT / SCALE;
final int MAX_LETTER_SIZE = 40;
Capture video;

String phrase = "Ain't no business like show business.";
PFont font;

void setup() {
  font = createFont("Courier", 20);
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
  background(0);
  video = new Capture(this, COLUMNS, ROWS, FPS);
  video.start();
}

void draw() {
  background(0);
  if (video.available()) video.read();
  video.loadPixels();
  int charCount = 0;
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLUMNS; ++j) {
      int x = j * SCALE;
      int y = i * SCALE;
      int loc = j + i * video.width;
      float brightness = brightness(video.pixels[loc]);
      textFont(font);
      fill(200);
      textSize(MAX_LETTER_SIZE * brightness / 255);
      text(phrase.charAt(charCount), x, y);
      charCount = (charCount + 1) % phrase.length();
    }
  }
}
