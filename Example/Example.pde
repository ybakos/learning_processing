// Learning Processing Example 16-14. Overall motion.

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
  background(0);
  if (video.available()) {
    previousFrame.copy(video, 0, 0, width, height, 0, 0, width, height);
    previousFrame.updatePixels();
    video.read();
  }
  loadPixels();
  video.loadPixels();
  previousFrame.loadPixels();
//  image(video, 0, 0);
  float totalMotion = 0.0;
  for (int i = 0; i < video.pixels.length; ++i) {
    color current = video.pixels[i];
    color previous = previousFrame.pixels[i];
    float r1 = red(current);
    float g1 = green(current);
    float b1 = blue(current);
    float r2 = red(previous);
    float g2 = green(previous);
    float b2 = blue(previous);
    float difference = dist(r1, g1, b1, r2, g2, b2);
    totalMotion += difference;
  }
  float averageMotion = totalMotion / video.pixels.length;
  noStroke();
  fill(100 + averageMotion * 3, 100, 100);
  float r = averageMotion * 2;
  ellipse(width / 2, height / 2, r, r);
}
