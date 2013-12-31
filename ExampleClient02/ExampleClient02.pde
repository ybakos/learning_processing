// Learning Processing Example 19-7. Client for multi-user whiteboard.

import processing.net.*;

final String HOSTNAME = "localhost";
final int PORT = 5204;

Client client;
final char MESSAGE_END = '*';

void setup() {
  size(400, 400);
  client = new Client(this, HOSTNAME, PORT);
  background(200);
}

void draw() {
  if (client.available() > 0) {
    String data = client.readStringUntil(MESSAGE_END);
    println("Received: " + data);
    if (data != null) {
      int[] coordinates = int(splitTokens(data, ",*"));
      fill(33, 100);
      noStroke();
      ellipse(coordinates[0], coordinates[1], 16, 16);
    }
  }
}

void mouseDragged() {
  String message = mouseX + "," + mouseY + MESSAGE_END;
  client.write(message);
  println("Sending: " + message);
}

// Establish a new connection to the server.
void keyPressed() {
  client = new Client(this, HOSTNAME, PORT);
}
