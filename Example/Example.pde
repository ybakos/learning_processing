// Learning Processing Example 13-7. Wave.

float theta = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  theta += 0.02;
  noStroke();
  fill(0);
  float x = theta;
  for (int i = 0; i <= 40; ++i) {
    float y = sin(x) * height / 2;
    ellipse(i * 10, y + height / 2, 16, 16);
    x += 0.2;
  }
}