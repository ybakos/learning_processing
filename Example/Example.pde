// Learning Processing Example 18-6. Counting word frequency.

PFont f;
String[] adrift;
int counter = 0;
final String DELIMITERS = " ,.?!;:";
final String URL = "http://www.gutenberg.org/files/44404/44404-0.txt";

void setup() {
  size(400, 400);
  f = createFont("Georgia", 40, true);
  String[] rawText = loadStrings(URL);
  String everything = join(rawText, " ");
  adrift = splitTokens(everything, DELIMITERS);
  frameRate(5);
}

void draw() {
  background(33);
  String word = adrift[counter];
  int total = 0;
  for (int i = 0; i < adrift.length; ++i) {
    if(word.equals(adrift[i])) ++total;
  }
  textFont(f);
  fill(150);
  text(word, 10, 90);
  text(total, 10, 150);
  stroke(200);
  fill(175);
  rect(10, 50, total / 4, 20);
  counter = (counter + 1) % adrift.length;
}