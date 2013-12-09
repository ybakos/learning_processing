void setup() {
  String[] lines = loadStrings("http://xml.weather.yahoo.com/forecastrss?p=75208");
  for (String line : lines) {
    println(line);
  }
}