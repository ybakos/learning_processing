// Experimenting with convolution matrices.

PImage skull;
int w = 80;

float[][] matrix = //{{-1, -1, -1}, {-1, 9, -1}, {-1, -1, -1}};
                   {{1.0/9, 1.0/9,1.0/9}, {1.0/9,1.0/9,1.0/9}, {1.0/9,1.0/9,1.0/9}};
                   //{{}, {}, {}};
                   //{{}, {}, {}};
                   //{{}, {}, {}};
                   //{{}, {}, {}};

void setup() {
  skull = loadImage("skull.jpg");
  size(skull.width, skull.height);
}

void draw() {
  image(skull, 0, 0);
  int xStart = constrain(mouseX - w / 2, 0, width);
  int yStart = constrain(mouseY - w / 2, 0, height);
  int xEnd = constrain(mouseX + w / 2, 0, width);
  int yEnd = constrain(mouseY + w / 2, 0, height);
  int matrixSize = 3;
  loadPixels();
  for (int x = xStart; x < xEnd; ++x) {
    for (int y = yStart; y < yEnd; ++y) {
      color c = convolution(x, y, matrix, matrixSize, skull);
      int loc = x + y * skull.width;
      pixels[loc] = c;
    }
  }
  updatePixels();
  stroke(0);
  noFill();
  rect(xStart, yStart, w, w);
}

color convolution(int x, int y, float[][] matrix, int matrixSize, PImage img) {
  float rTotal = 0.0;
  float gTotal = 0.0;
  float bTotal = 0.0;
  int offset = matrixSize / 2;
  for (int i = 0; i < matrixSize; ++i) {
    for (int j = 0; j < matrixSize; ++j) {
      int xLoc = x + i - offset;
      int yLoc = y + j - offset;
      int loc = xLoc + img.width * yLoc;
      loc = constrain(loc, 0, img.pixels.length - 1);
      rTotal += (red(img.pixels[loc]) * matrix[i][j]);
      gTotal += (green(img.pixels[loc]) * matrix[i][j]);
      bTotal += (blue(img.pixels[loc]) * matrix[i][j]);
    }
  }
  rTotal = constrain(rTotal, 0, 255);
  gTotal = constrain(gTotal, 0, 255);
  bTotal = constrain(bTotal, 0, 255);
  return color(rTotal, gTotal, bTotal);
}