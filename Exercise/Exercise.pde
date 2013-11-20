// Learning Processing Exercise 15-3. Tinting an image.

PImage hoff;

void setup() {
  size(400, 400, P3D);
  hoff = loadImage("hoff.jpg");
}

void draw() {
  background(33);
  pushMatrix();
  pushStyle();
  translate(width / 4, height / 2);
  imageMode(CENTER);
  tint((height - mouseX) % 255, (height - mouseY) % 255, 200);
  image(hoff, 0, 0, 200, 200);
  popStyle();
  popMatrix();
  translate(width - width / 4, height / 2);
  imageMode(CENTER);
  image(hoff, 0, 0, 200, 200);
}
