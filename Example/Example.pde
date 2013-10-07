// Learning Processing Example 6-9

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  background(0);
  int i = 0;
  while (i < width) {
    noStroke();
    float distance = abs(mouseX - i);
    fill(distance);
    rect(i, 0, 10, height);
    i += 10;
  }
}