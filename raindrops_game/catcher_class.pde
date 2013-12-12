class Catcher {
  int d;
  PVector loc;
  PVector vel;

  Catcher() {
    d = 50;
    loc = new PVector(mouseX, 455);
  }

  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(203, 16, 93);
    ellipse(mouseX, loc.y, d, d);
  }
  void move() {
    loc.set(mouseX, 450);
  }
}

