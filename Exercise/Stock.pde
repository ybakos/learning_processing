class Stock {

  String symbol;
  float x;
  float y;
  float symbolWidth;

  static final int SPEED = 3;

  Stock(String symbol, float x, float y) {
    this.symbol = symbol;
    this.y = y;
    this.x = width + x;
  }

  void move(float x) {
    if (this.x <= 0) {
      this.x = x;
    } else {
      this.x -= SPEED;
    }
  }

  void draw(PFont font) {
    textFont(font);
    textAlign(RIGHT);
    text(symbol, x, y);
  }

  float getWidth() {
    return textWidth(symbol);
  }



}