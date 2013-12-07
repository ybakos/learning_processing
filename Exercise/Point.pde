public class Point {

  public float x;
  public float y;
  public float z;

  public Point(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  public Point(Point base, RangeBoundary x, RangeBoundary y, RangeBoundary z) {
    this.x = base.x + random(x.floor, x.ceiling);
    this.y = base.y + random(y.floor, y.ceiling);
    this.z = base.z + random(z.floor, z.ceiling);
  }

}