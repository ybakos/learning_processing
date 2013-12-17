// Learning Processing Example 19-2. Simple client.

import processing.net.*;

Client client;

float newMessageColor = 0;

PFont font;
String messageFromServer = "";
String typing = "";

void setup() {
  size(400, 400);
  client = new Client(this, "localhost", 5204);
  font = createFont("Helvetica", 24, true);
}

void draw() {
  background(newMessageColor);
  textFont(font);
  textAlign(CENTER);
  text(messageFromServer, width / 2, height / 2);
  newMessageColor = constrain(++newMessageColor, 0, 255);
  fill(0);
  text("Type message and hit return to send.", width / 2, 60);
  if (client.available() > 0) {
    messageFromServer = client.readString();
    newMessageColor = 0;
  }
}

void keyPressed() {
  if (key == '\n') {
    client.write(typing);
    typing = "";
  } else {
    typing += key;
  }
}

void mousePressed() {
  client = new Client(this, "localhost", 5204);
}
