// Learning Processing Exercise 18-3. A sketch that chats with the user.

PFont font;

String[] questions = { "Hi, what's your name?",
                       "What is your favorite food?"
                     };

String[] responses = { "Nice to meet you, ",
                       "Mm, I love eating "
                     };

String userInput = "";
String saved = "";

int questionIndex = 0;
int responseIndex = -1;

final int MARGIN = 25;

void setup() {
  size(300, 200);
  font = createFont("Helvetica", 20, true);
}

void draw() {
  background(33);
  textFont(font);
  fill(200);
  if (questionIndex < questions.length) {
    text(questions[questionIndex], MARGIN, 40);
  }
  text(userInput, MARGIN, 90);
  if (responseIndex >= 0) {
    text(responses[responseIndex] + saved, MARGIN, 130);
  }
}

void keyPressed() {
  if (key == '\n') {
    saved = userInput;
    userInput = "";
    ++responseIndex;
    ++questionIndex;
  } else {
    userInput += key;
  }
}