// Learning Processing Exercise 15-4. Layered images and alpha transparency.

PImage hoff;
PImage skull;

void setup() {
  size(400, 400, P3D);
  hoff = loadImage("hoff.jpg");
  skull = loadImage("skull.jpg");
}

void draw() {
  background(33);
  translate(width / 2, height / 2);
  imageMode(CENTER);
  image(skull, 0, 0, 200, 200);
  pushStyle();
  tint(255, 180);
  image(hoff, 0, 0, 200, 200);
  popStyle();
}
