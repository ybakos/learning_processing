// Learning Processing Exercise 17-6. A stock ticker.

final float VERTICAL_LOCATION = 180;

String[] stockSymbols = { "AAPL 560",
                          "FCNTX 100",
                          "FDFFX 35",
                          "VFINX 166",
                          "VFORX 28",
                          "VTTHX 17",
                          "FEQIX 57",
                          "AGG 107",
                          "VNQI 55",
                          "SCHP 53",
                          "SCHV 39",
                          "EFV 55",
                          "VEA 40",
                          "VWO 40",
                          "VTI 93",
                          "TIP 111"
                        };
Stock[] stocks = new Stock[stockSymbols.length];

PFont arial;

float tickerWidth = 0.0;
final float PADDING = 50;
final float TOTAL_WIDTH_FUDGE_FACTOR = 800;

void setup() {
  size(400, 200);
  arial = createFont("Arial", 24, true);
  for (int i = 0; i < stockSymbols.length; ++i) {
    stocks[i] = new Stock(stockSymbols[i], PADDING * i + tickerWidth + textWidth(stockSymbols[i]), VERTICAL_LOCATION);
    tickerWidth = tickerWidth + PADDING + stocks[i].getWidth();
  }
  tickerWidth += TOTAL_WIDTH_FUDGE_FACTOR;
}

void draw() {
  background(33);
  fill(200);
  for (int i = 0; i < stocks.length; ++i) {
    stocks[i].move(tickerWidth);
    stocks[i].draw(arial);
  }
}
