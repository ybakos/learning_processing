// Learning Processing Exercise 16-2. Pointillising a video.

import processing.video.*;

final int SCREEN_WIDTH = 640;
final int SCREEN_HEIGHT = 480;
final int POINT_SIZE = 16;
Capture video;


void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P2D);
  video = new Capture(this, SCREEN_WIDTH, SCREEN_HEIGHT, 30);
  video.start();
  background(33);
}

void draw() {
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  for (int i = 0; i < 200; ++i) {
    int x = (int)random(video.width);
    int y = (int)random(video.height);
    int loc = x + y * video.width;
   
    float r = red(video.pixels[loc]);
    float g = green(video.pixels[loc]);
    float b = blue(video.pixels[loc]);
    noStroke();
    fill(r, g, b, 100);
    ellipse(x, y, POINT_SIZE, POINT_SIZE);
  }
}
