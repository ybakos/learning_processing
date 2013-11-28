// Learning Processing Example 16-7. Video pixelization effect.

import processing.video.*;

final int SCREEN_WIDTH = 1024;
final int SCREEN_HEIGHT = 768;
final int FPS = 30;
final int SCALE = 32;
final int COLUMNS = SCREEN_WIDTH / SCALE;
final int ROWS = SCREEN_HEIGHT / SCALE;
Capture video;

float theta = 0.0;

void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P3D);
  background(0);
  video = new Capture(this, COLUMNS, ROWS, FPS);
  video.start();
}

void draw() {
  background(0);
  if (video.available()) video.read();
  video.loadPixels();
  translate(0, height / 2);
  rotateX(theta);
  for (int i = 0; i < COLUMNS; ++i) {
    for (int j = 0; j < ROWS; ++j) {
      int x = i * SCALE;
      int y = j * SCALE;
      color c = video.pixels[i + j * video.width];
      fill(c);
      stroke(0);
      rect(x, y - height / 2, SCALE, SCALE);
    }
  }
  theta += 0.01;
}