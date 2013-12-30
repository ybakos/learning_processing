// Learning Processing Example 19-4. Simple client, using server data for color.

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
  background(data);

}
