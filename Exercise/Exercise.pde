// Learning Processing Exercise 19-4. Client for multi-user whiteboard, with color.
// Protocol format: mouseX,mouseY,RED,GREEN,BLUE*

import processing.net.*;

final String HOSTNAME = "localhost";
final int PORT = 5204;

Client client;
final int RED = 200;
final int GREEN = 255;
final int BLUE = 200;
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
      int[] tokens = int(splitTokens(data, ",*"));
      fill(tokens[2], tokens[3], tokens[4], 100);
      noStroke();
      ellipse(tokens[0], tokens[1], 16, 16);
    }
  }
}

void mouseDragged() {
  String message = mouseX + "," + mouseY + "," + red + "," + green + "," + blue + MESSAGE_END;
  client.write(message);
  println("Sending: " + message);
}

// Establish a new connection to the server.
void keyPressed() {
  client = new Client(this, HOSTNAME, PORT);
}
