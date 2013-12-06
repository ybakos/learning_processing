// Learning Processing Example 17-7b. Demonstrating why this approach doesn't work,
// to justify why we need Shiffman's approach of translating then rotating, to
// preserve letter orientation.

PFont f;
final float RADIUS = 100;
final float DIAMETER = RADIUS * 2;
final float WIDTH = 20;
final float HEIGHT = 40;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  translate(width / 2, height / 2);
  drawCenter();
  drawCircle();
  drawBoxes(10);
}

void drawCenter() {
  strokeWeight(5);
  stroke(255);
  point(0, 0);
}

void drawCircle() {
  strokeWeight(1);
  noFill();
  stroke(155);
  ellipse(0, 0, DIAMETER, DIAMETER);
}

void drawBoxes(int numberOfBoxes) {
  float theta = 0;
  for (int i = 0; i < numberOfBoxes; ++i) {
    float arcLength = WIDTH;
    pushMatrix();
    rotate(theta);
    translate(RADIUS, 0);
    drawBox();
    popMatrix();
    theta += arcLength/RADIUS; // increase the angle, for next box position
  }
}

void drawBox() {
  rectMode(CENTER);
  stroke(100);
  fill(100, 33);
  rect(0, 0, WIDTH, HEIGHT);
}