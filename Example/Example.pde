// Learning Processing Example 16-12. Simple background removal.

import processing.video.*;

Capture video;
PImage backgroundImage = new PImage();
final float THRESHOLD = 50.0;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height, 15);
  video.start();
  backgroundImage = createImage(video.width, video.height, RGB);
}

void draw() {
  if (video.available()) video.read();
  loadPixels();
  video.loadPixels();
  backgroundImage.loadPixels();
  image(video, 0, 0);
  float closestDistance = 500.0;
  int closestX = 0;
  int closestY = 0;
  for (int x = 0; x < video.width; ++x) {
    for (int y = 0; y < video.height; ++y) {
      int loc = x + y * video.width;
      color fgColor = video.pixels[loc];
      color bgColor = backgroundImage.pixels[loc];
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(bgColor);
      float g2 = green(bgColor);
      float b2 = blue(bgColor);
      float distance = dist(r1, g1, b1, r2, g2, b2);
      if (distance > THRESHOLD) {
        pixels[loc] = fgColor;
      } else {
        pixels[loc] = color(0, 255, 0);
      }
    }
  }
  updatePixels();
}

void mousePressed() {
  backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  backgroundImage.updatePixels();
}
