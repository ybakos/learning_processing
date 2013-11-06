// Learning Processing Example 13-6b. A graph noise values.

float time = 0.0;
final float DISTANCE = 0.01;

void setup() {
  size(400,200);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(2);
  // Starting point for graph
  float noiseArg = time;
  for (int x = 0; x < width; ++x) {
    // Get current and "next" noise value
    float y1 = noise(noiseArg) * height;
    float y2 = noise(noiseArg + DISTANCE) * height;
    // Draw line
    line(x, y1, x + 1, y2);
    // println("x1:" + x + " y1:" + y1 + " x2:" + (x + 1) + " y2:" + y2);
    // Increment noiseArg
    noiseArg += DISTANCE;
  }
  time += DISTANCE;
}

// The noise function returns the same value given the
// same argument (eg noise(1) == noise(1)).
// Shiffman leverages this by drawing lines from
// x, noise0 to x+1, noise1, and then from
// x+1, noise1 to x+2, noise2. This is what happens
// for every completion of the for loop.
// Next, we increment time, and use that as the starting
// value of the "noiseArg". By using the same offset for
// noiseArg as the change in time, each subsequent call
// to draw starts with the last call's second noiseArg
// to generate noise0.
// So, in essence, the first call to draw uses a series
// of noise values N0 to N + (width * 0.01). The next call
// to draw uses noise values (N + 0.01) to N + ((width + 1) * 0.01).
// This is how and why the noise values "shift" to the left.
//
// Below, the first 420 values used to draw the lines. Notice
// how each y2 becomes the next y1. Then notice how, for the next
// call to draw, where x starts at 0 again in the for loop,
// the first y1 is the previous draw call's for loop's first y2.
//
// x1:0 y1:4.294038 x2:1 y2:4.328188
// x1:1 y1:4.328188 x2:2 y2:4.434421
// x1:2 y1:4.434421 x2:3 y2:4.608807
// x1:3 y1:4.608807 x2:4 y2:4.844482
// x1:4 y1:4.844482 x2:5 y2:5.1210732
// x1:5 y1:5.1210732 x2:6 y2:5.4652014
// x1:6 y1:5.4652014 x2:7 y2:5.8273206
// x1:7 y1:5.8273206 x2:8 y2:6.206939
// x1:8 y1:6.206939 x2:9 y2:6.594696
// x1:9 y1:6.594696 x2:10 y2:6.962449
// x1:10 y1:6.962449 x2:11 y2:7.3579936
// ...
// x1:399 y1:45.99516 x2:400 y2:45.883457
// x1:0 y1:4.328188 x2:1 y2:4.434421
// x1:1 y1:4.434421 x2:2 y2:4.608807
// x1:2 y1:4.608807 x2:3 y2:4.844482
// x1:3 y1:4.844482 x2:4 y2:5.1210732
// x1:4 y1:5.1210732 x2:5 y2:5.4652014
// x1:5 y1:5.4652014 x2:6 y2:5.8273206
// x1:6 y1:5.8273206 x2:7 y2:6.206939
// x1:7 y1:6.206939 x2:8 y2:6.594696
// x1:8 y1:6.594696 x2:9 y2:6.962449
// x1:9 y1:6.962449 x2:10 y2:7.3579936
// x1:10 y1:7.3579936 x2:11 y2:7.7101493
