// Learning Processing Example 16-2. Video tinting.

import processing.video.*;

Capture video;

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
  tint((float(mouseX) / width) * 255, (float(mouseY) / height) * 255, 255);
  image(video, 0, 0, mouseX, mouseY);
}