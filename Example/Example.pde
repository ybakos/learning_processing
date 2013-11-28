// Learning Processing Example 16-4. Displaying a movie.

import processing.video.*;

final int SCREEN_WIDTH = 640;
final int SCREEN_HEIGHT = 480;
Movie movie;

void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT, P2D);
  movie = new Movie(this, "surfing.mov");
  movie.loop();
//  video.start();
}

void draw() {
  background(33);
  if (movie.available()) {
    movie.read();
  }
  image(movie, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
}