// Learning Processing Exercise 20-4. Audio manipulation with minim.

import ddf.minim.*;

final String SOUND_FILE_NAME = "song.mp3";
final int DB_LIMIT_LOW = -80;
final int DB_LIMIT_HIGH = 0;

Minim minim;
AudioPlayer tone;

void setup() {
  size(400, 400);
  minim = new Minim(this);
  tone = minim.loadFile(SOUND_FILE_NAME);
  tone.printControls();
  tone.loop();
}

void draw() {
  if (tone.isPlaying()) background(200);
  else background(33);

  float gain = map(1 - (float(mouseY) / height), 0, 1, DB_LIMIT_LOW, DB_LIMIT_HIGH);
  tone.setGain(gain);
  float balance = map(float(mouseX) / width, 0, 1, -1, 1);
  tone.setBalance(balance);
  text("Gain: " + gain, 50, 50);
  rect(0, height, 50, -(height - mouseY));
  text("Balance: " + balance, 50, 100);
  rect(width / 2, height - 50, mouseX - width / 2, 50);
}

void mousePressed() {
  tone.rewind();
  tone.play();
}
