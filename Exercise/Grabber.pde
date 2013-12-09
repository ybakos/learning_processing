abstract class Grabber {

  String textBetween(String source, String start, String end) {
    String found = "";
    int startIndex = source.indexOf(start);
    if (startIndex == -1) return ""; // not found
    startIndex += start.length(); // move index
    int endIndex = source.indexOf(end, startIndex);
    if (endIndex == -1) return ""; // couldn't find the end
    return source.substring(startIndex, endIndex);
  }

}