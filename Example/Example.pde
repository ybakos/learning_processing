// Learning Processing Example 10, "Rain Game."

int savedTime;
int totalTime = 5000;
Ball ball1;
Ball ball2;

void setup() {
  size(400, 400);
  savedTime = millis();
  ball1 = new Ball(64);
  ball2 = new Ball(32);
}

void draw() {
  background(200);
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    background(random(255));
    savedTime = millis();
  }

  ball1.move();
  ball2.move();
  if (ball1.intersect(ball2)) {
    ball1.highlight();
    ball2.highlight();
  }
  ball1.draw();
  ball2.draw();
}
