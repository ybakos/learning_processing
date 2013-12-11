// Learning Processing Exercise 18-10. Counting letter frequency.

PFont font;
String text;
final String URL = "http://www.gutenberg.org/files/44404/44404-0.txt";

int[] frequencies = new int[26];

int maxFrequency = 0;

void setup() {
  size(400, 400);
  font = createFont("Georgia", 12, true);
  String text = join(loadStrings(URL), "").toLowerCase();
  for (int i = 0; i < text.length(); ++i) {
    try {
      if (Character.isAlphabetic(text.charAt(i))) {
        frequencies[text.charAt(i) - 'a'] += 1;
        if (frequencies[text.charAt(i) - 'a'] > maxFrequency) {
          maxFrequency = frequencies[text.charAt(i) - 'a'];
        }
      }
    } catch (Exception e) { // unexpected characers
      println(text.charAt(i));
    }
  }
}

void draw() {
  background(33);
  textFont(font);
  for (int i = 0; i < frequencies.length; ++i) {
    stroke(255);
    fill(200);
    rect(0, i * (height / frequencies.length), (float(frequencies[i]) / maxFrequency) * (width - textWidth(String.valueOf(maxFrequency))), height / frequencies.length);
    fill(100);
    text((char)(i + 'a'), 2, (height / frequencies.length) - 3 + i * (height / frequencies.length));
    fill(200);
    text(frequencies[i], 1 + (float(frequencies[i]) / maxFrequency) * (width - textWidth(String.valueOf(maxFrequency))), (height / frequencies.length) - 3 + i * (height / frequencies.length));
  }
}