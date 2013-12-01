// Learning Processing Exercise 16-7. Finding the average location of motion, indicated with a circle.

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
  float aveX = 0;
  float aveY = 0;

  background(0);

  if (video.available()) {
    previousFrame.copy(video, 0, 0, width, height, 0, 0, width, height);
    previousFrame.updatePixels();
    video.read();
  }
  loadPixels();
  video.loadPixels();
  previousFrame.loadPixels();

  image(video, 0, 0);

  float totalX = 0.0;
  float totalY = 0.0;
  int totalPixelsMoved = 0;
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
      if (dist(r1, g1, b1, r2, g2, b2) > THRESHOLD) {
        totalX += x;
        totalY += y;
        ++totalPixelsMoved;
      }
    }
  }
  aveX = totalX / totalPixelsMoved;
  aveY = totalY / totalPixelsMoved;
  stroke(255, 0, 0);
  strokeWeight(5);
  ellipse(aveX, aveY, 200, 200);
}
