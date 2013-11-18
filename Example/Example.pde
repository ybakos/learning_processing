// Learning Processing Example 14-16. Simple solar system

float theta = 0.0;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(200);
  stroke(0);
  translate(width / 2, height / 2);
  fill(255, 200, 50);
  ellipse(0, 0, 20, 20);

  rotate(theta);
  translate(50, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 10, 10);

  pushMatrix();
  rotate(-theta * 4);
  translate(15, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();

  rotate(theta * 2);
  translate(25, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  theta += 0.01;
}
