// Learning Processing Exercise 14-8. A pyramid class.

float theta = 0.0;

Pyramid pyramid = new Pyramid(100);

void setup() {
  size(400, 400, P3D);
}

void draw() {
  theta += 0.01;
  background(200);
  translate(width / 2, height / 2, 0);
  rotateX(theta);
  rotateY(theta);
  pyramid.draw();
}
