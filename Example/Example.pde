// Learning Processing Example 21-4.5mine. Generating multiple images.

float xTheta = 0.0;
float yTheta = 0.0;

boolean saveImage = false;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(255);
  fill(33);
  text(frameCount, 50, 50);
  noFill();
  translate(width / 2, height / 2);
  rotateX(xTheta += 0.001);
  rotateY(yTheta += 0.003);
  box(100);
  if (saveImage) {
    saveFrame("example-##.png");
    saveImage = false;
  }
}

void mousePressed() {
  saveImage = true;
}
