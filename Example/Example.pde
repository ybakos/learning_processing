// Learning Processing Example 19-6. Multi-user server.

import processing.net.*;

Server server;

PFont font;
String incomingMessage = "";
final char MESSAGE_END = '*';

void setup() {
  size(400, 400);
  server = new Server(this, 5204);
  font = createFont("Helvetica", 24, true);
}

void draw() {
  background(200);
  textFont(font);
  textAlign(CENTER);
  fill(33);
  Client client = server.available();
  if (client != null) {
    incomingMessage = client.readStringUntil(MESSAGE_END);
    println("Client: " + incomingMessage);
    if (incomingMessage != null) {
      text(incomingMessage, width / 2, height / 2);
      server.write(incomingMessage); // broadcast
    } else {
      println("NULL: " + client.readString());
    }
  }
}

void serverEvent(Server server, Client client) {
  println("New client: " + client.ip());
}
