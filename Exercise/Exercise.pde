// Learning Processing Exercise 16-4. A video mirror of random sized rectangles.

import processing.video.*;

Capture video;
float x;
float y;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, width, height, 15);
  video.start();
}

void draw() {
  if (video.available()) video.read();
  video.loadPixels();
  x = random(0, width);
  y = random(0, height);
  int rectWidth = (int)random(2, 20);
  int rectHeight = (int)random(2, 20);
  int midX = (int)constrain((x + rectWidth) / 2, 0, width);
  int midY = (int)constrain((y + rectHeight) / 2, 0, height);
  color c = video.pixels[(width - 1 - midX) + (midY * video.width)];
  noStroke();
  fill(c, 100);
  rect(x, y, rectWidth, rectHeight);
}