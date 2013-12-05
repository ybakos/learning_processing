// Learning Processing Example 17-6. Dancing letters.

String phrase = "Ain't no business like show business.";
PFont font;

Letter[] letters = new Letter[phrase.length()];

void setup() {
  size(500, 200);
  font = createFont("Arial", 20, true);
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
