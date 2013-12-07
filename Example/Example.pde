// Learning Processing Example 18-1. User input via string concatenation.

PFont font;

String userInput = "";
String saved = "";

void setup() {
  size(300, 200);
  font = createFont("Helvetica", 20, true);
}

void draw() {
  background(33);
  int margin = 25;
  textFont(font);
  fill(200);
  text("Click and type.\nHit return to save.", margin, 40);
  text(userInput, margin, 90);
  text(saved, margin, 130);
}

void keyPressed() {
  if (key == '\n') {
    saved = userInput;
    userInput = "";
  } else {
    userInput += key;
  }
}