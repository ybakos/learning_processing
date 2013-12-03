// Learning Processing Example 17-3. Scrolling headlines

String[] headlines = {"Snowden reveals NSA evil.", "Malcom X resurrected, hungry."};

PFont laundromat;
float x;
int index = 0;

void setup() {
  size(400, 200);
  laundromat = createFont("Laundromat1967", 24, true);
  x = width;
}

void draw() {
  background(33);
  fill(200);
  textFont(laundromat);
  textAlign(LEFT);
  text(headlines[index], x, 180);
  x = x - 3;
  float w = textWidth(headlines[index]);
  if (x < -w) {
    x = width;
    index = (index + 1) % headlines.length;
  }
}
