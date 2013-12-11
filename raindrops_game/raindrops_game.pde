Rain[] drops = new Rain[15];
Catcher c;
StartScreen s;
boolean start;
PImage CAT;

void setup() {
  size(500, 500);
  c = new Catcher();
  s = new StartScreen();
  CAT = loadImage("Rain.jpg");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  boolean start = false;
}

void draw() {
  if (start == false) {
    s.display();
  }
  else {
    background(0);
    image(CAT, 0, 30);
    c.display();
    for (int i = 0; i < drops.length; i++) {
      drops[i].display();
      drops[i].drop();
    }
  }
}
void mousePressed() {
  if (275 >= mouseX && mouseX>= 225 && 265>= mouseY && mouseY >= 235) {
    start=true;
  }
}

