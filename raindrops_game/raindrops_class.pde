class Rain {
  PVector loc;
  PVector vel;
  PVector acc;
  float topspeed;
  int d;
  int missed;
  PImage yarn;
  int lives;


  Rain() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 2);
    acc = new PVector(0, 0.00005);
    topspeed = 20; 
    d = 18;
    missed = 0;
    yarn = loadImage("yarnball.png");
    lives = 3;
  }
  void display() {
    imageMode(CENTER);
    fill(81, 0, 99);
    ellipse(loc.x, loc.y, d, d);
    //so yarnball can act as a circle
    image(yarn, loc.x, loc.y);
    //yarnball
    fill(120, 66, 90);
    text("lives:"+lives, 50, 50);
  }

  void drop() {
    vel.add(acc);
    //adding acceleration
    vel.limit(topspeed);
    //setting maximum speed
    loc.add(vel);
    //adding velocity to object
    if (loc.y - d/2 > height) {
      loc.y = -d/2;
    }
    if (loc.x + d/2 < 0) {
      loc.x = width + d/2;
    }
    //resets object
    if (loc.y > height) {
      missed++;
    }
    if (missed >= 10) {
      lives=2;
    }
    if (missed >= 20) {
      lives=1;
    }
    if (missed > 30) {
      end = true;
      //end screen appears
      loc.y = 0;
      //not sure if this^ is necessary, final score was increasing for some reason on the end screen because it was still catching
    }
  }

  void newLoc() {
    loc.set(random(width), loc.y);
    //function that resets yarnballs to random x positions
  }
  void catchDrop(Catcher c) {
    if (loc.dist(c.loc) <= c.d/2) {
      //if object touches catcher
      loc.y = height + d/2;
      //if object touches catcher, then object resets
      score++;
      //and score increases by 1 each time yarn is caught
      newLoc();
    }
  }
}
