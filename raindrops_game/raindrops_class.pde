class Rain {
  PVector loc;
  PVector vel;
  PVector acc;
  float topspeed;
  int d;
  int x;
  int y;

  Rain() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 2);
    acc = new PVector(-.0001, 0.00001);
    topspeed = 20; 
    d = 10;
    x = 250;
  }
  void display() {
    colorMode(HSB, 360, 100, 100);
    fill(random(255), random(255), random(255));
    ellipse(loc.x, loc.y, d, d);
    if (millis() >= 60000) {
      loc.y = 0;
      loc.x = 0;
      text("Final Score:"+score, width/2, height/2);
      noStroke();
    }
  }
  void drop() {
    vel.add(acc);
    vel.limit(topspeed);
    loc.add(vel);

    if (loc.y - d/2 > height) {
      loc.y = -d/2;
    }
    if (loc.y + d/2 < 0) {
      loc.y = height + d/2;
    }
    if (loc.x - d/2 > width) {
      loc.x = -d/2;
    }
    if (loc.x + d/2 < 0) {
      loc.x = width + d/2;
    }
  }
  void catchDrop(Catcher c) {
    if (loc.dist(c.loc) < d/2 + c.d/2) {
      println("touched");
      loc.y = height + d/2;
      score++;
    }
  }
}

