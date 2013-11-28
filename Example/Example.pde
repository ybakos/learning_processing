// Learning Processing Example 16-9. Video mirror using random lines.

import processing.video.*;

Capture video;
float x;
float y;

void setup() {
  size(640, 480);
  x = width / 2;
  y = height / 2;
  background(0);
  video = new Capture(this, width, height, 15);
  video.start();
}

void draw() {
  if (video.available()) video.read();
  video.loadPixels();
  float newX = constrain(x + random(-20, 20), 0, width - 1);
  float newY = constrain(y + random(-20, 20), 0, height - 1);
  int midX = int(x + newX) / 2;
  int midY = int(y + newY) / 2;
  color c = video.pixels[(width - 1 - midX) + (midY * video.width)];
  stroke(c);
  strokeWeight(4);
  line(x, y, newX, newY);
  x = newX;
  y = newY;
}