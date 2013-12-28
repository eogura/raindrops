PVector location;
PVector velocity;
int d;

void setup() {
  size(500, 500);
  location = new PVector(width/2, height/2);
  velocity = new PVector(1,2);
  d = 50;
}

void draw() {
  background(0);
  location.add(velocity);
  ellipse(location.x, location.y, d, d);
  if (location.y >= height) {
    location.y= height - d/2;
    velocity.y*=-9;
  }
}

