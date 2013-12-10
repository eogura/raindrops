color c;
color f;
int x;
int y;
int d;
int oldTime = 0;

void setup() {
  size(500, 500);
  frameRate(3);
  x = 250;
  y = 250;
  d = 100;
}

void draw() {
  background(c);
  fill(f);
  noStroke();
  if (millis() - oldTime >= 3000) {
    c = color(random(255), random(255), random(255));
    ellipse(x, y, d, d);
    f = color(random(255), random(255), random(255));
    oldTime = millis();
  }
}

