class Catcher {
  int d;

  Catcher() {
    d = 50;
  }

  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(203, 16, 93);
    ellipse(mouseX, 450, d, d);
  }
}

