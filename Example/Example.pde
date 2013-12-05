// Learning Processing Example 17-5.9. Video text mirror.

import processing.video.*;

String phrase = "Ain't no business like show business.";
PFont font;

void setup() {
  size(400, 200);
  font = createFont("Arial", 20, true);
  background(0);
}

void draw() {
  background(0);
  int x = 10;
  for (int i = 0; i < phrase.length(); ++i) {
    textSize(random(12, 36));
    text(phrase.charAt(i), x, height / 2);
    x += textWidth(phrase.charAt(i));
  }
}
