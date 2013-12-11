Rain[] drops = new Rain[25];
Catcher c;
StartScreen s;
boolean start;

void setup() {
  size(500, 500);
  c = new Catcher();
  s = new StartScreen();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  boolean start;
}

void draw() {
  s.display();
  if (start == true) {
    background(0, 49, 3);
    c.display();
    for (int i = 0; i < drops.length; i++) {
      drops[i].display();
      drops[i].drop();
    }
    if (
  }
}
void mousePressed() {
  if (275 >= mouseX && mouseX>= 225 && 265>= mouseY && mouseY >= 235) {
    start=true;
  }
}

