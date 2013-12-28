Rain[] drops = new Rain[5];
Catcher c;
StartScreen s;
int score;
boolean start;
boolean end;
PImage CAT;

void setup() {
  size(500, 500);
  c = new Catcher();
  s = new StartScreen();
  score = 1;
  CAT = loadImage("Rain.jpg");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  start = false;
  end = false;
}

void draw() {
  if (start == false) {
    s.display();
  }
  else {
    background(0);
    image(CAT, 0, 30);
    fill(360);
    textAlign(CENTER);
    textSize(20);
    fill(360);
    text("SCORE:"+score, 70, 25);
    text("time:"+millis()/1000+"s", 440, 25);
    c.display();
    c.move();
    for (int i = 0; i < drops.length; i++) {
      drops[i].display();
      drops[i].drop();
      drops[i].catchDrop(c);
    }
  }
}

void mousePressed() {
  if (275 >= mouseX && mouseX>= 225 && 265>= mouseY && mouseY >= 235) {
    start=!start;
  }
  if (275 >= mouseX && mouseX>= 225 && 330>= mouseY && mouseY >= 300) {
    end=!end;
  }
}

