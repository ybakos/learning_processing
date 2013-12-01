// Learning Processing Exercise 16-6. Replacing a video background with an image.

import processing.video.*;

Capture video;
PImage backgroundImage = new PImage();
PImage scene;
final float MAX_THRESHOLD = 100.0;
float threshold = 100.0;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height, 15);
  video.start();
  scene = loadImage("ghetto.jpg");
  backgroundImage = createImage(video.width, video.height, RGB);
}

void draw() {
  threshold = MAX_THRESHOLD * (float(mouseX) / width);
  if (video.available()) video.read();
  loadPixels();
  video.loadPixels();
  backgroundImage.loadPixels();
  scene.loadPixels();
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
      if (distance > threshold) {
        pixels[loc] = fgColor;
      } else {
        pixels[loc] = scene.pixels[loc];
      }
    }
  }
  updatePixels();
}

void mousePressed() {
  backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  backgroundImage.updatePixels();
}
