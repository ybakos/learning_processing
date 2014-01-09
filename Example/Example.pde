// Learning Processing Example 20-5mine. Using audio input volume to control a shape's size.

import ddf.minim.*;

final int DB_LIMIT_LOW = -80;
final int DB_LIMIT_HIGH = 0;

Minim minim;
//AudioInput input;
AudioPlayer input;

void setup() {
  minim = new Minim(this);
//  input = minim.getLineIn();
  input = minim.loadFile("song.mp3");
  size(input.bufferSize(), 200); // As wide as the buffer
//  input.enableMonitoring();
  input.printControls();
  input.play();
  background(33);
}

void draw() {
  // background(33);
  fill(33, 10);
  rect(-1, -1, width + 1, height + 1);
  fill(255);
  stroke(200);
  float[] samples = input.mix.toArray();
  for (int i = 0; i < samples.length - 1; i++) {
    line(i, 50 + samples[i] * 50, i + 1, 50 + samples[i + 1] * 50);
  }
  float level = input.mix.level();
  ellipse(width / 2, height / 2, level * height, level * height);
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}