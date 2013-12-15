class Blob {

  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float h;
  float w;

  Blob() {
    x = width / 2;
    y = height / 2;
    xSpeed = 1.0;
    ySpeed = 1.0;
    h = 10.0;
    w = 10.0;
  }

  Blob(float x, float y, float xSpeed, float ySpeed, float w, float h) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.w = w;
    this.h = h;    
  }

  void move() {
    x += xSpeed;
    y += ySpeed;
    if (x > width || x < 0) x = width / 2;
    if (y > height || y < 0) y = height / 2;
  }

  void draw() {
 
    stroke(33);
    fill(150, 100);
    ellipse(x, y, w, h);
  }

  String toString() {
    return "Blob: " + x + "," + y + " " + xSpeed + "," + ySpeed + " " + w + "," + h;
  }

}