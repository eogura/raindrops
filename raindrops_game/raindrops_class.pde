class Rain {
  PVector loc;
  PVector vel;
  int d;

  Rain() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 2);

    d = 5;

    d = 3;
  }

  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(203,16,93);
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
  }
}

