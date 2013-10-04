// Learning Processing Example 5-10

float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;

float xspeed = 3;
float yspeed = 1;

void setup() {
  size(400, 400);
}

void draw() {
  x = x + xspeed;
  y = y + yspeed;
  if ((x > width) || (x < 0)) xspeed *= -1;
  if (y > height || y < 0) yspeed *= -1;
  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
  // body
  fill(150);
  rect(x, y, w / 6, h * 2);
  // head
  fill(255);
  ellipse(x, y - h / 2, w, h);
  // eyes
  fill(0);
  ellipse(x - w / 3, y - h / 2, eyeSize, eyeSize * 2);
  ellipse(x + w / 3, y - h / 2, eyeSize, eyeSize * 2);
  // legs
  stroke(150);
  line(x - w / 12, y + h, x - w / 4, y + h + 10);
  line(x + w / 12, y + h, x + w / 4, y + h + 10);
}