// Learning Processing Example 17-7c. Demonstrating why the following approach doesn't
// work as intended, to justify why we need Shiffman's approach of translating then
// rotating, to preserve letter orientation.

PFont font;
final float RADIUS = 100;
final float DIAMETER = RADIUS * 2;
final float WIDTH = 20;
final float HEIGHT = 40;

final String PHRASE = "Thanks Shiffman!";

void setup() {
  size(400, 400);
  textFont(font = createFont("Helvetica", 40, true));
  textAlign(CENTER);
}

void draw() {
  background(200);
  translate(width / 2, height / 2);
  drawCenter();
  drawCircle();
  drawLetters(PHRASE);
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

// The baseline of the text is not the arc, and it needs to be.
// This is why the following doesn't work, and why we need to translate
// and then rotate.
void drawLetters(String letters) {
  float theta = 0;
  for (int i = 0; i < letters.length(); ++i) {
    float arcLength = textWidth(letters.charAt(i));
    pushMatrix();
    rotate(theta);
    translate(RADIUS, 0);
    fill(33);
    text(letters.charAt(i), 0, 0);
    popMatrix();
    theta += arcLength / RADIUS;
  }
}