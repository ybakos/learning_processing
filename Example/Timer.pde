class Timer {

  int savedTime;
  boolean running = false;
  int totalTime;

  Timer(int totalTime) {
    this.totalTime = totalTime;
  }

  void start() {
    running = true;
    savedTime = millis();
  }

  boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (running && passedTime > totalTime) {
      running = false;
      return true;
    } else return false;
  }

}