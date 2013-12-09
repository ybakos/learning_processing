// Learning Processing Example 18-5. Manually parsing Yahoo XML weather data.

WeatherGrabber yahooWeather;
PFont font;
String[] zips = {"75208", "45431", "80201"};
int zipIndex = 0;

void setup() {
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
  text(zips[zipIndex], 10, 160);
  text(weather, 10, 90);
  text(temperature, 10, 40);
  textSize(14);
  text("Click to change zip", 10, height - 20);
  stroke(0);
  fill(150);
  rect(10, 50, temperature * 2, 20);
}

void mousePressed() {
  zipIndex = (zipIndex + 1) % zips.length;
  yahooWeather.setZip(zips[zipIndex]);
  yahooWeather.requestWeather();
}
