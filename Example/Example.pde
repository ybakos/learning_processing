// Learning Processing Example 16-1. Video capture and display.

import processing.video.*;

Capture video;

float theta = 0.0;

void setup() {
  size(displayWidth, displayHeight, P2D);
  video = new Capture(this, 640, 480, 30);
  video.start();
}

void draw() {
  background(33);
  if (video.available()) {
    video.read();
  }
  translate(width / 2, height / 2);
  rotate(theta);
  imageMode(CENTER);
  image(video, 0, 0);
  theta += 0.01;
}