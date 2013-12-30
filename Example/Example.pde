// Learning Processing Example 19-3. Broadcasting server.

import processing.net.*;

Server server;

PFont font;
int data = 0;

void setup() {
  size(400, 400);
  server = new Server(this, 5204);
  font = createFont("Helvetica", 24, true);
}

void draw() {
  background(200);
  textFont(font);
  textAlign(CENTER);
  fill(0);
  text(data, width / 2, height / 2);
  server.write(data);
  data = (data + int(random(-2, 4))) % 256; // Increase and decrease a little, reset if you hit 256.
}

void serverEvent(Server server, Client client) {
  println("New client: " + client.ip());
}
