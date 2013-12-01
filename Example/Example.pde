// Learning Processing Example 16-13. Simple motion detection.

import processing.video.*;

Capture video;
PImage previousFrame;
final float THRESHOLD = 100.0;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height, 30);
  video.start();
  previousFrame = createImage(video.width, video.height, RGB);
}

void draw() {
  if (video.available()) {
    previousFrame.copy(video, 0, 0, width, height, 0, 0, width, height);
    previousFrame.updatePixels();
    video.read();
  }
  loadPixels();
  video.loadPixels();
  previousFrame.loadPixels();
//  image(video, 0, 0);
  for (int x = 0; x < video.width; ++x) {
    for (int y = 0; y < video.height; ++y) {
      int loc = x + y * video.width;
      color current = video.pixels[loc];
      color previous = previousFrame.pixels[loc];
      float r1 = red(current);
      float g1 = green(current);
      float b1 = blue(current);
      float r2 = red(previous);
      float g2 = green(previous);
      float b2 = blue(previous);
      float distance = dist(r1, g1, b1, r2, g2, b2);
      if (distance > THRESHOLD) {
        pixels[loc] = color(0);
      } else {
        pixels[loc] = color(255);
      }
    }
  }
  updatePixels();
}
