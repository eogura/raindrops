Catcher c;
Rain drops;
StartScreen s;
EndScreen e;
int score;
boolean start;
boolean end;
boolean restart;
PImage gradient;
float oldTime;
float currentTime;

void setup() {
  size(500, 500);
  c = new Catcher();
  s = new StartScreen();
  e = new EndScreen();
  drops = new Rain();
  score = 0;
  gradient = loadImage("nc8WgYs.jpg");
  oldTime = 0;
  currentTime = 0;
  start = false;
  end = false;
  restart = false;
}

void draw() {
  if (start == false) {
    s.display();
  }
  else {
    colorMode(HSB, 360, 100, 100);
    background(gradient);
    textAlign(CENTER);
    textSize(20);
    fill(67, 35, 97);
    text("SCORE:"+score, 60, 25);
    //displays score
    fill(293, 69, 67);
    text("time:"+millis()/1000+"s", 440, 25);
    //displays time
    c.display();
    c.move();
    drops.display();
    drops.drop();
    drops.catchDrop(c);
    if (millis() + currentTime >= 60000) {
      drops.display();
      drops.drop();
      drops.catchDrop(c);
      currentTime = oldTime;
      //accelerates after 60 seconds
    }
  }
  if (end == true) {
    e.display();
  }
  if (restart == true) {
    s.display();
    //button doesn't work on start screen for some reason
  }
}

void mousePressed() {
  if (275 >= mouseX && mouseX>= 225 && 265>= mouseY && mouseY >= 235) {
    start=true;
  }
  //start screen button
  if (305 >= mouseX && mouseX>= 195 && 330>= mouseY && mouseY >= 300) {
    restart = true;
  }
  //end screen button
}

