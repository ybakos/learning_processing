// Learning Processing Exercise 17-10. Scattered text that finds its way home.

String phrase = "You are what you eat.";
PFont font;

Letter[] letters = new Letter[phrase.length()];

final int BASEX = 10;
final int BASEY = 250;

boolean motion = false;

void setup() {
  size(500, 500, P3D);
  font = createFont("Palatino", 40, true);
  textFont(font);
  int x = BASEX;
  for (int i = 0; i < phrase.length(); ++i) {
    letters[i] = new Letter(phrase.charAt(i), new Point(x, BASEY, 0));
    x += textWidth(phrase.charAt(i));
  }
}

void draw() {
  background(33);
  if (mousePressed) motion = true;
  for (int i = 0; i < letters.length; ++i) {
    letters[i].move(motion);
    letters[i].draw();
  }
}
