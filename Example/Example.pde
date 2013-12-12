// Learning Processing Example 18-7mine. Making asynchronous requests with Processing's thread() function
// instead of SimpleML.

Timer timer = new Timer(5000);

final String URL = "http://techmeme.com";
String html = "";
int counter = 0;
int back = 255;

void setup() {
  size(400, 400);
  thread("retrieveData");
  timer.start();
}

void draw() {
  background(back);
  if (timer.isFinished()) {
    thread("retrieveData");
    println("Requesting...");
    timer.start();
  }

  for (int i = 0; i < width; ++i) {
    if (i < html.length()) {
      int c = html.charAt(i);
      stroke(c, 150);
      line(i, 0, i, height);
    }
  }

  fill(255);
  noStroke();
  rect(counter, 0, 10, height);
  counter = (counter + 1) % width;
  back = constrain(back - 1, 0, 255);
}

void retrieveData() {
  html = join(loadStrings(URL), "");
  back = 255;
  println("Request complete.");
}
