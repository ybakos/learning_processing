// Learning Processing Example 15-12. Crude edge detection.

PImage hoff;

void setup() {
  hoff = loadImage("hoff.jpg");
  size(hoff.width, hoff.height);
}

void draw() {
  loadPixels();
  hoff.loadPixels();
  for (int x = 1; x < width; ++x) {
    for (int y = 0; y < height; ++y) {
      int loc = x + y * hoff.width;
      color c = hoff.pixels[loc];
      int left = x - 1 + y * hoff.width;
      color cLeft = hoff.pixels[left];
      float diff = abs(brightness(c) - brightness(cLeft));
      pixels[loc] = color(diff);
    }
  }
  updatePixels();
}