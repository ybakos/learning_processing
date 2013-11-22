// Learning Processing Exercise 15-9. Adjusting threshold per mouse location.

PImage hoff;
PImage silhouette;

float threshold = 127.0;

void setup() {
  hoff = loadImage("hoff.jpg");
  silhouette = createImage(hoff.width, hoff.height, RGB);
  size(hoff.width, hoff.height);
}

void draw() {
  threshold = mouseX - width / 3;
  hoff.loadPixels();
  silhouette.loadPixels();
  for (int y = 0; y < hoff.height; ++y) {
    for (int x = 0; x < hoff.width; ++x) {
      int loc = x + y * hoff.width;
      if (brightness(hoff.pixels[loc]) > threshold) {
        silhouette.pixels[loc] = color(255);
      } else {
        silhouette.pixels[loc] = color(0);
      }
    }
  }
  silhouette.updatePixels();
  image(silhouette, 0, 0);
}
