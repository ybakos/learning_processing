// Learning Processing Exercise 13-6. An array of oscillators.

Oscillator[] oscillators = new Oscillator[100];

void setup() {
  size(400, 400);
  for (int i = 0; i < oscillators.length; ++i) {
    oscillators[i] = new Oscillator();
  }
}

void draw() {
  background(200);
  for (int i = 0; i < oscillators.length; ++i) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}
