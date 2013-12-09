class WeatherGrabber {

  static final String BASE_URL = "http://xml.weather.yahoo.com/forecastrss?p=";

  int temperature;
  String weather = "";
  String zip;

  WeatherGrabber(String zip) {
    this.zip = zip;
  }

  void setZip(String zip) {
    this.zip = zip;
  }

  int getTemperature() {
    return temperature;
  }

  String getWeather() {
    return weather;
  }

  void requestWeather() {
    String[] lines = loadStrings(BASE_URL + zip);
    String xml = join(lines, "");
    String marker = "<yweather:condition  text=\"";
    String end = "\"";
    weather = textBetween(xml, marker, end);
    marker = "temp=\"";
    temperature = int(textBetween(xml, marker, end));
  }

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