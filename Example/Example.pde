// Learning Processing Example 16-3. A spotlight of brightness on a video.

import processing.video.*;

final int SCREEN_WIDTH = 640;
final int SCREEN_HEIGHT = 480;
Capture video;


void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P2D);
  video = new Capture(this, SCREEN_WIDTH, SCREEN_HEIGHT, 30);
  video.start();
}

void draw() {
  background(33);
  if (video.available()) {
    video.read();
  }
  loadPixels();
  video.loadPixels();
  for (int x = 0; x < video.width; ++x) {
    for (int y = 0; y < video.height; ++y) {
      int loc = x + y * video.width;
      float r = red(video.pixels[loc]);
      float g = green(video.pixels[loc]);
      float b = blue(video.pixels[loc]);
      float maxDist = 100;
      float d = dist(x, y, mouseX, mouseY);
      float adjustBrightness = (maxDist - d) / maxDist;
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      color c = color(r, g, b);
      pixels[loc] = c;

    }
  }
  updatePixels();
}