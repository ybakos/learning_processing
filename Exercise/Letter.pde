class Letter {
  char value;
  float baseX;
  float baseY;
  float x;
  float y;

  Letter(float x, float y, char letter) {
    this.x = baseX = x;
    this.y = baseY = y;
    value = letter;
  }

  void draw() {
    fill(33);
    textAlign(LEFT);
    text(value, x, y);
  }

  void shake() {
    x += random(-2, 2);
    y += random(-2, 2);
  }

  void reset() {
    x = baseX;
    y = baseY;
  }

}