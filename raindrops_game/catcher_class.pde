class Catcher {
  PVector loc;
  PVector vel;
  PImage kitten;
  int d;

  Catcher() {
    loc = new PVector(mouseX, 440);
    //location of catcher, moveable by mouse on x axis, restricted to one point on y axis
    d = 35;
    kitten = loadImage("kitten.png");
  }

  void display() {
    fill(0);
    ellipse(loc.x, loc.y, d, d);
    //so catcher can act as a circle
    image(kitten, loc.x, loc.y);
    //kitten
  }
  void move() {
    loc.set(mouseX, loc.y);
    //allows the catcher to move horizontally across the display
  }
}

