class StartScreen {

  StartScreen() {
    int x = 225;
    int y = 235;
    int d = 100;
    int rects = 10;
    float rectWidth = width/rects;
  }

  void display() {
    colorMode(HSB, width, 100, 100);
    background(0);
    strokeWeight(4);
    for (int i= 0; i < width; i += 30) {
      line(i, 0, i, height);
      stroke(random(255), random(255), random(255));
    }
    fill(245, 35, 224);
    rect(225, 235, 50, 30);
    textSize(20);
    textAlign(CENTER);
    fill(35, 245, 60);
    text("start", 250, 255);
    textSize(50);
    fill(random(255), random(255), random(255));
    text("Raindrops Game", 250, 100, 50);
  }
}
