// Learning Processing Example 16-11. Simple color tracking

import processing.video.*;

Capture video;
color trackedColor;
final float THRESHOLD = 10.0;

void setup() {
  size(640, 480);
  trackedColor = color(255, 0, 0);
  video = new Capture(this, width, height, 15);
  video.start();
}

void draw() {
  if (video.available()) video.read();
  video.loadPixels();
  image(video, 0, 0);
  float closestDistance = 500.0;
  int closestX = 0;
  int closestY = 0;
  for (int x = 0; x < video.width; ++x) {
    for (int y = 0; y < video.height; ++y) {
      int loc = x + y * video.width;
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackedColor);
      float g2 = green(trackedColor);
      float b2 = blue(trackedColor);
      float distance = dist(r1, g1, b1, r2, g2, b2);
      if (distance < closestDistance) {
        closestDistance = distance;
        closestX = x;
        closestY = y;
      }
    }
  }
  if (closestDistance < THRESHOLD) {
    fill(trackedColor);
    strokeWeight(4);
    stroke(0);
    ellipse(closestX, closestY, 16, 16);
  }
}

void mousePressed() {
  int loc = mouseX + mouseY * video.width;
  trackedColor = video.pixels[loc];
}
