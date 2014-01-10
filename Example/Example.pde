// Learning Processing Example 21-3. Rendering a PDF from a frame during the draw loop.

import processing.pdf.*;

float x = 0;
float y = 0;

void setup() {
  size(400, 400);
  beginRecord(PDF, "example.pdf");
  background(200);
}

void draw() {
  float newX = constrain(x + random(-20, 20), 0, width);
  float newY = constrain(y + random(-20, 20), 0, height);
  stroke(frameCount % 255, frameCount * 3 % 255, frameCount * 11 % 255, 100);
  strokeWeight(4);
  line(x, y, newX, newY);
  x = newX;
  y = newY;
}

void mousePressed() {
  endRecord();
  open(sketchPath("example.pdf"));
}
