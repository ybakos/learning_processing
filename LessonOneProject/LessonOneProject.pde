// Learning Processing Lesson One Project
// 1) Design a static screen drawing using RGB color and primitive shapes.
// 2) Make the static screen drawing dynamic by having it interact with the mouse.
//    This might include shapes following the mouse, changing their size according
//    to the mouse, changing their color according to the mouse, and so on.

// Ten lines.

void setup() {
  size(255, 255);

  stroke(200, 100, 100);
  strokeWeight(5);
}

void draw() {
  background(230);
  line(mouseX + 0, 0, mouseX + 0, 255);
  line(mouseX + 20, 0, mouseX + 20, 255);
  line(mouseX + 40, 0, mouseX + 40, 255);
  line(mouseX + 60, 0, mouseX + 60, 255);
  line(mouseX + 80, 0, mouseX + 80, 255);
  line(mouseX + 100, 0, mouseX + 100, 255);
  line(mouseX + 110, 0, mouseX + 110, 255);
  line(mouseX + 120, 0, mouseX + 120, 255);
  line(mouseX + 160, 0, mouseX + 160, 255);
  line(mouseX + 180, 0, mouseX + 180, 255);
}

void mouseClicked() {
  stroke(mouseX, mouseX + mouseY, mouseY);
}

void keyPressed() {
  strokeWeight(key / 8);
}

void keyReleased() {
  strokeWeight(5);
}
