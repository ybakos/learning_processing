// Learning Processing Example 13-6a. A graph of random values.

float[] vals;

void setup() {
  size(400,200);
  smooth();
  // An array of random values
  vals = new float[width];
  for (int i = 0; i < vals.length; i++) {
    vals[i] = random(height);
  }
}

void draw() {
  background(255);
  // Draw lines connecting all points
  for (int i = 0; i < vals.length - 1; i++) {
    stroke(0);
    strokeWeight(2);
    line(i, vals[i], i + 1, vals[i + 1]);
  }
  // Slide everything down in the array
  for (int i = 0; i < vals.length - 1; i++) {
    vals[i] = vals[i + 1]; 
  }
  // Add a new random value
  vals[vals.length - 1] = random(height);
}
