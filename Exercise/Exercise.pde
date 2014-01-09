// Learning Processing Exercise 20-6mine. Sound threshold with minim. A clapper.

import ddf.minim.*;

final int DB_LIMIT_LOW = -80;
final int DB_LIMIT_HIGH = 0;
final float DB_LOUD = 0.1;

Minim minim;
AudioInput input;
void setup() {
  minim = new Minim(this);
  input = minim.getLineIn();
  size(input.bufferSize(), 200); // As wide as the buffer
  input.enableMonitoring();
  input.printControls();
  background(33);
}

void draw() {
  fade(10);
  stroke(200);
  float[] samples = input.mix.toArray();
  for (int i = 0; i < samples.length - 1; i++) {
    line(i, 50 + samples[i] * 50, i + 1, 50 + samples[i + 1] * 50);
  }
  float level = input.mix.level();
  if (level >= DB_LOUD) {
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), level * 200, level * 200);
  }
  fill(100);
  rect(0, height - level * height, 20, level * height);
}

void fade(int frameInterval) {
  if (frameCount % frameInterval == 0) {
    fill(33, 50);
    rect(-1, -1, width + 1, height + 1);
    fill(255);
  }
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}