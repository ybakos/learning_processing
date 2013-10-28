// Learning Processing Example 10, "Rain Game."

Catcher catcher;

void setup() {
  size(400, 400);
  catcher = new Catcher(32);
}

void draw() {
  background(200);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
}
