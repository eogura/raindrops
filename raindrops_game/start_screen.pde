class StartScreen {

  int d = 100;
  int rects = 10;
  float rectWidth;
  int x;
  int y;

  Start() {
    colorMode(HSB, width, 100, 100);
    rectWidth = width/rects;
    frameRate(3);
    x = 175;
    y = 205;
  }

  void display() {
    background(0);
    strokeWeight(2);
    for (int i= 0; i < width; i += 30) {
      line(i, 0, i, height);
      stroke(random(255), random(255), random(255));
    }
  }
}

