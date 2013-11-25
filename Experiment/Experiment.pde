// Experimenting with filters.

PImage hoff;

void setup() {
  hoff = loadImage("hoff.jpg");
  size(hoff.width, hoff.height);
}

void draw() {
  image(hoff, 0, 0);
//  filter(THRESHOLD, 0.5);
//  filter(GRAY);
  //filter(OPAQUE);
  //filter(INVERT);
  filter(POSTERIZE, constrain((float(mouseX) / width) * 30, 2, 100));
  // filter(ERODE);
  //filter(BLUR, 4.0);
  //filter(DILATE);
}
