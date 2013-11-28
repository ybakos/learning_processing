// Learning Processing Example 16-5. Scrubbing within a movie.

import processing.video.*;

final int SCREEN_WIDTH = 640;
final int SCREEN_HEIGHT = 480;
Movie movie;

void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P2D);
  movie = new Movie(this, "surfing.mov");
  background(33);
  movie.play();
}

void draw() {
  float ratio = mouseX / float(width);
  movie.jump(ratio * movie.duration());
  movie.read();
  image(movie, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
}