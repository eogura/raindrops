Rain[] drops = new Rain[500];
Catcher c;
 
 
void setup() {
  size(500,500);
  c = new Catcher();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
}
 
void draw() {
  background(0,49,3);
   c.display();
  for (int i = 0; i < drops.length; i++) {
    drops[i].display();
    drops[i].drop();
  }
}
