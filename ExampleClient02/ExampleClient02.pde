// Learning Processing Example 19-5. Simple client, using server data for rotation.

import processing.net.*;

Client client;

int data = 0;

void setup() {
  size(400, 400);
  client = new Client(this, "localhost", 5204);
}

void draw() {
  if (client.available() > 0) {
    data = client.read();
  }
  background(200);
  stroke(0);
  fill(175);
  translate(width / 2, height / 2);
  float theta = (data / 255.0) * PI; // some fraction of a circle
  rotate(theta);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
}
