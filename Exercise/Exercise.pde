// Learning Processing Exercise 17-10. Scattered text that finds its way home.

String phrase = "You are what you eat.";
PFont font;

Letter[] letters = new Letter[phrase.length()];

void setup() {
  size(500, 200);
  font = createFont("Palatino", 40, true);
  textFont(font);
  int x = 10;
  for (int i = 0; i < phrase.length(); ++i) {
    letters[i] = new Letter(x, 100, phrase.charAt(i));
    x += textWidth(phrase.charAt(i));
  }
}

void draw() {
  background(0);
  background(200);
  for (int i = 0; i < letters.length; ++i) {
    letters[i].draw();
    if (mousePressed) letters[i].shake();
    else letters[i].reset();
  }
}
