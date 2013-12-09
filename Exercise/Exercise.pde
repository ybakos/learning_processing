// Learning Processing Exercise 18-8 & 18-9. Parsing Yahoo weather data and word of the day.

WeatherGrabber yahooWeather;
PFont font;
String[] zips = {"75208", "45431", "80201"};
int zipIndex = 0;

void setup() {
  String[] lines = loadStrings("http://xml.weather.yahoo.com/forecastrss?p=75208");
  for (String line : lines) {
    println(line);
  }
  size(400, 400);
  yahooWeather = new WeatherGrabber(zips[zipIndex]);
  yahooWeather.requestWeather();
  font = createFont("Helvetica", 32, true);
}

void draw() {
  background(33);
  textFont(font);
  fill(200);
  String weather = yahooWeather.getWeather();
  int temperature = yahooWeather.getTemperature();
  int tomorrowHigh = yahooWeather.getTomorrowHigh();
  int tomorrowLow = yahooWeather.getTomorrowLow();

  text("Weather in " + zips[zipIndex], 10, 40);
  text(weather, 10, 90);

  stroke(0);
  fill(150);
  rect(10, 120, temperature * 2, 20);
  text(temperature + " degrees", temperature * 2 + 20, 140);

  text("Tomorrow's high: " + tomorrowHigh, 10, 180);
  text("Tomorrow's low: " + tomorrowLow, 10, 220);

  textSize(14);
  text("Click to change zip", 10, height - 20);
}

void mousePressed() {
  zipIndex = (zipIndex + 1) % zips.length;
  yahooWeather.setZip(zips[zipIndex]);
  yahooWeather.requestWeather();
}
