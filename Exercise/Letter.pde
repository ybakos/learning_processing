class Letter {

  final color DEFAULT_COLOR = color(200);
  final RangeBoundary DEFAULT_X_RANGE = new RangeBoundary(-200, 200);
  final RangeBoundary DEFAULT_Y_RANGE = new RangeBoundary(-200, 200);
  final RangeBoundary DEFAULT_Z_RANGE = new RangeBoundary(-100, 100);
  final int SLOWNESS = 20;

  char value;
  Point destination;
  Point location;

  color c;

  Letter(char c, Point destination) {
    value = c;
    this.destination = destination;
    this.location = new Point(destination, DEFAULT_X_RANGE, DEFAULT_Y_RANGE, DEFAULT_Z_RANGE);
    this.c = DEFAULT_COLOR;
  }

  void draw() {
    fill(c);
    textAlign(LEFT);
    text(value, location.x, location.y);
  }

  void move(boolean towardDestination) {
    if (towardDestination) moveTowardDestination();
  }

  void moveTowardDestination() {
    location.x += (destination.x - location.x) / SLOWNESS;
    location.y += (destination.y - location.y) / SLOWNESS;
    location.z += (destination.z - location.z) / SLOWNESS;
  }

}