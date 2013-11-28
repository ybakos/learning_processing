// Learning Processing Exercise 16-3. Changing the speed of a video.

import processing.video.*;

final int SCREEN_WIDTH = 640;
final int SCREEN_HEIGHT = 480;
Movie movie;

void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P2D);
  movie = new Movie(this, "surfing.mov");
  background(33);
  movie.loop();
}

void draw() {
  float ratio = (mouseX - float(width) / 2) / float(width);
  movie.speed(ratio * 2);
  if (movie.available()) movie.read();
  image(movie, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
}