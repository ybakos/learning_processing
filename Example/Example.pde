// Learning Processing Example 21-4. Rendering a PDF from P3D mode, and multiple PDFs.

import processing.pdf.*;

float xTheta = 0.0;
float yTheta = 0.0;

boolean generatePDF = false;

void setup() {
  size(400, 400, P3D);
  textMode(SHAPE);
}

void draw() {
  if (generatePDF) beginRaw(PDF, "example-##.pdf");
  background(255);
  fill(33);
  text(frameCount, 50, 50);
  noFill();
  translate(width / 2, height / 2);
  rotateX(xTheta += 0.001);
  rotateY(yTheta += 0.003);
  box(100);
  if (generatePDF) {
    endRaw();
    generatePDF = false;
  }
}

void mousePressed() {
  generatePDF = true;
}
