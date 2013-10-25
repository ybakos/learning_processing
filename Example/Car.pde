// A simple car class.

class Car {

  color c;
  float x;
  float y;
  float speed;

  public Car() {
    c = color(100);
    x = 0;
    y = height / 2;
    speed = 1;
  }

  public Car(color c, float x, float y, float speed) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.speed = speed;
  }

  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(x, y, 20, 10);
  }

  void move() {
    x += speed;
    if (x > width) x = 0;
  }

}