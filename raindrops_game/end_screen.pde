class EndScreen {

  EndScreen() {
    int x = 225;
    int y = 235;
    int d = 100;
    int rects = 10;
    float rectWidth = width/rects;
  }

  void display() {
    fill(245, 35, 224);
    rect(225, 300, 50, 30);
    textSize(20);
    textAlign(CENTER);
    fill(35, 245, 60);
    text("Good Job", 250, 300);
  }
}

