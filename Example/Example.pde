// Learning Processing Example 17-1. Using fonts, demonstrating drawback of pre-generated bitmap fonts.

PFont font;
PFont laundromat;

void setup() {
  size(800, 400);
  font = loadFont("laundromat1967-48.vlw");
  laundromat = createFont("Laundromat1967", 12, true);
}

void draw() {
  background(33);
  textFont(font, 48);
  fill(150, 150, 225);
  text("Program or be Programmed", 10, 100);
  textFont(font, 12);
  text("Program or be Programmed", 10, 200);
  textFont(font, 200);
  text("Program or be Programmed", 10, 400);
  textFont(laundromat);
  text("Program or be Programmed", 10, 220);
}
