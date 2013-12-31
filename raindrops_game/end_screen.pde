class EndScreen {

  EndScreen() {
    int x = 225;
    int y = 235;
    int d = 100;
    int rects = 10;
    float rectWidth = width/rects;
  }
  void display() {
    background(288, 74, 80);
    noStroke();
    fill(179, 87, 93);
    rect(195, 300, 110, 30);
    fill(179, 85, 8);
    textAlign(CENTER);
    text("play again?", 250, 320);
    textSize(20);
    fill(60, 87, 94);
    text("Game Over", 250, 175);
    text("Final Score:"+score, 250, 200);
    //displays final score on end screen
  }
}

