class Timer {

  int startTime;
  int totalTime;

  Timer(int totalTime) {
    this.totalTime = totalTime;
  }

  void start() {
    startTime = millis();
  }

  boolean isFinished() {
    return (millis() - startTime > totalTime);
  }

}