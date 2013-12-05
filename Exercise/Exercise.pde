// Learning Processing Exercise 17-9. Video mirror of text using a non-fixed-width font.

import processing.video.*;

final int SCREEN_WIDTH = 1024;
final int SCREEN_HEIGHT = 768;
final int FPS = 30;
final int SCALE = 16;
final int COLUMNS = SCREEN_WIDTH / SCALE;
final int ROWS = SCREEN_HEIGHT / SCALE;
Capture video;

String phrase = "Ain't no business like show business.";
PFont font;

void setup() {
  font = createFont("Arial", 20);
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
    float x = 0;
    while (x < width) { // we need to control when x is incremented, so no for loop.
      int y = i * SCALE;
      // The video data is smaller than the screen, and x varies according to character width.
      // We calculate the video column based on our x location divided by discretizing x
      // according to SCALE to determine which video pixel column we are in.
      int videoPixelColumn = constrain((int)(x / SCALE), 0, COLUMNS - 1);
      int loc = videoPixelColumn + i * video.width;
      color c = video.pixels[loc];
      textFont(font);
      fill(c);
      text(phrase.charAt(charCount), x, y);
      x += textWidth(phrase.charAt(charCount)); // increase the x offset using the current character.
      charCount = (charCount + 1) % phrase.length();
    }
  }
}
