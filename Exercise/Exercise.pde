// Exercise 9-7. A refactoring of Example 9-8, creating a snake object that leaves a trail.

Snake snake = new Snake();

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  snake.move(new Point(mouseX, mouseY));
  snake.draw();
}
