// Learning Processing Example 13-4. Perlin noise.

float time = 0.0;
float increment = 0.01;

void setup() {
  size(200, 200);
}

void draw() {
  background(200);
  fill(33);
  float n = noise(time) * width;
  ellipse(width / 2, height / 2, n, n);
  time += increment;
}
