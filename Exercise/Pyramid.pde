class Pyramid {

  int size;

  Pyramid(int size) {
    this.size = size;
  }

  void draw() {
    beginShape(TRIANGLES);

    fill(150, 0, 0, 127);
    vertex(-size, -size, -size);
    vertex(size, -size, -size);
    vertex(0, 0, size);

    fill(0, 150, 0, 127);
    vertex(size, -size, -size);
    vertex(size, size, -size);
    vertex(0, 0, size);

    fill(0, 0, 150, 127);
    vertex(size, size, -size);
    vertex(-size, size, -size);
    vertex(0, 0, size);

    fill(150, 0, 150, 127);
    vertex(-size, size, -size);
    vertex(-size, -size, -size);
    vertex(0, 0, size);

    endShape();
  }


}