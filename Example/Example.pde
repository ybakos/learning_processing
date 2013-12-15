// Learning Processing Example 18-9new. Using the Processing XML API.

Bubble[] bubbles;

void setup() {
  size(400, 400);
  XML xml = loadXML("bubbles.xml");
  XML[] children = xml.getChildren("bubble");
  bubbles = new Bubble[children.length];
  for (int i = 0; i < children.length; ++i) {
    XML diameterElement = children[i].getChild("diameter");
    XML colorElement = children[i].getChild("color");
    bubbles[i] = new Bubble(colorElement.getInt("red"),
                            colorElement.getInt("green"),
                            diameterElement.getIntContent());
  }
}

void draw() {
  background(200);
  for (int i = 0; i < bubbles.length; ++i) {
    bubbles[i].display();
    bubbles[i].drift();
  }
}
