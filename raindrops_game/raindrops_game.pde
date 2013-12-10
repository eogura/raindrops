Rain[] drops = new Rain[50];
Catcher c;
StartScreen s;
boolean start;

void setup() {
  size(500, 500);
  c = new Catcher();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  start = false;
}

void draw() {
  background(0, 49, 3);
  if s.display = true {
    c.display();
    for (int i = 0; i < drops.length; i++) {
      drops[i].display();
      drops[i].drop();
    }
  }
}

