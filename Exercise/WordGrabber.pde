// Extracts the "word of the day" from a simple RSS feed.
class WordGrabber extends Grabber {

  static final String BASE_URL = "http://www.merriam-webster.com/word/index.xml";

  String word = "";

  void setWord(String word) {
    this.word = word;
  }

  void requestWord() {
    String[] lines = loadStrings(BASE_URL);
    String xml = join(lines, "");
    String marker = "<item><title><![CDATA[";
    String end = "]]>";
    println(xml.indexOf("<item><title><![CDATA["));
    word = textBetween(xml, marker, end);
  }

}