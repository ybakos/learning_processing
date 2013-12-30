// Learning Processing Exercise 19-3. Simple client, using server data for location.

import processing.net.*;

Client client;

int data = 0;
int dataMax = 0;

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
  dataMax = max(data, dataMax);
  int x = (int)map(data, 0, dataMax, 0, width);
  rectMode(CENTER);
  rect(x, width / 2 + x % 10, 100, 100);
}
