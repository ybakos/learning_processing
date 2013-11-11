// Learning Processing Example 14-3. Simple 3D translation.

float z = 0;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(33);
  stroke(200);
  fill(100);
  translate(width / 2, height / 2, z);
  rectMode(CENTER);
  rect(0, 0, 8, 8);
  ++z;
  println(z);
}