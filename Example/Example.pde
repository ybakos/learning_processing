// Learning Processing Example 21-2. Seeing the graphics and generating a pdf with begin/endRecord.

import processing.pdf.*;

int x = 0;

void setup() {
  size(400, 400);
  beginRecord(PDF, "example.pdf");
}

void draw() {
  background(100, 200, 150);
  ellipse(++x, height / 2, 100, 100);
}

void mousePressed() {
  endRecord();
  open(sketchPath("example.pdf"));
}
