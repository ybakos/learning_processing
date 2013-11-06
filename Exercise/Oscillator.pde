class Oscillator {

  float xtheta;
  float ytheta;
  float delta;
  color c;

  Oscillator() {
    xtheta = 0;
    ytheta = 10;
    delta = random(0.01, 0.05);
    c = color(random(0, 100), random(0, 255), random(0, 150));
  }

  void oscillate() {
    xtheta += delta;
    ytheta += delta;
  }

  void display() {
    float x = (sin(xtheta) + 1) * (width / 2);
    float y = (sin(ytheta) + 1) * (width / 2);
    fill(c);
    ellipse(x, y, 16, 16);
  }

}