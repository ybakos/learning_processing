// Learning Processing Exercise 18-13. Using the XML api.

Blob[] blobs;

void setup() {
  size(400, 400);
  XML xml = loadXML("blobs.xml");
  XML[] children = xml.getChildren("blob");
  blobs = new Blob[children.length];
  for (int i = 0; i < children.length; ++i) {
    blobs[i] = new Blob(children[i].getChild("location").getFloat("x"),
                        children[i].getChild("location").getFloat("y"),
                        children[i].getChild("speed").getFloat("x"),
                        children[i].getChild("speed").getFloat("y"),
                        children[i].getChild("size").getInt("w"),
                        children[i].getChild("size").getInt("h"));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < blobs.length; ++i) {
    blobs[i].move();
    blobs[i].draw();
  }
}
