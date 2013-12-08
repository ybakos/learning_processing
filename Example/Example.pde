// Learning Processing Example 18-4. Loading and saving data to/from a text file.

Bubble[] bubbles;

void setup() {
  size(400, 400);
  String[] data = loadStrings("data.txt");
  bubbles = new Bubble[data.length];
  for (int i = 0; i < bubbles.length; ++i) {
    float[] values = float(split(data[i], ","));
    bubbles[i] = new Bubble(values[0], values[1], values[2]);
  }
}

void draw() {
  background(200);
  for (int i = 0; i < bubbles.length; ++i) {
    bubbles[i].display();
    bubbles[i].drift();
    if (bubbles[i].rollover(mouseX, mouseY)) {
      bubbles[i].change();
    }
  }
}

void mousePressed() {
  saveData();
}

void saveData() {
  String[] data = new String[bubbles.length];
  for (int i = 0; i < bubbles.length; ++i) {
    data[i] = bubbles[i].r + "," + bubbles[i].g + "," + bubbles[i].diameter;
  }
  saveStrings("data/data.txt", data);
}