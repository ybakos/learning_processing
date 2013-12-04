// Learning Processing Exercise 17-8. Text crawling into the distance.

String phrase = "TORCH and Sonja, Ming's\nagents, confined in prison\ncells in Barin's palace...\n\n\n\n\nFLASH! AH-HUH!";
PFont font;

float verticalPosition;

void setup() {
  font = createFont("Arial", 12);
  size(400, 400, P3D);
  verticalPosition = height;
}

void draw() {
  background(33);
  textAlign(CENTER);
  textSize(12);
  rotateX(PI / 4);
  text(phrase, width / 2, verticalPosition);
  verticalPosition -= 0.5;
}
