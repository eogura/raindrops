class Rain {
  PVector loc;
  PVector vel;
  int d;
  int x;
  int y;
  int s;
  int oldTime;

  Rain() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 2);
    d = 5;
    x = 250;
    y = 250;
    s = 100;
    oldTime = 0;
  }

  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(random(50, 255), random(255), random(255));
    ellipse(loc.x, loc.y, d, d);
  }
  void drop() {
    loc.add(vel);
    if (loc.y - d/2 > height) {
      loc.y = -d/2;
    }
    if (loc.y + d/2 < 0) {
      loc.y = height + d/2;
    }
    textAlign(CENTER);
    textSize(20);
    text(millis(), 460, 25);
    if (millis() - oldTime >= 3000) {
      oldTime = millis();
    }
  }
}

