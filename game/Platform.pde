class Platform {
  PImage ball; 
  PVector loc, vel, acc;
  boolean jumping = true;
  PImage backgrounds;
  
  Platform() {
    backgrounds = loadImage("platformbackground.fw.png");
    ball = loadImage("redBallCharacter.png");
    ball.resize(25,25);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0.1);
    loc = new PVector(0, height/10);
  }

  void move() {
    imageMode(CORNER);
    if (!jumping) {
      vel.set(0,0);
    } else {
      vel.add(acc);
    }
    if (keyPressed) {
      if (keyCode == UP) {
        if (!jumping) {
          vel.y = -5;
          jumping = true;
        }
      } else if (keyCode == DOWN && (loc.x <= width-55 || loc.y >= 90)) {
        loc.y++;
      } else if (keyCode == DOWN) {
        currentGame = "startScreen";
        startScreen.mode = 6;
      } else if (keyCode == RIGHT) {
        loc.x++;
      } else if (keyCode == LEFT) {
        loc.x--;
      }
    }
    loc.add(vel);
    hitBottom();
    hitPlatform();
  }
  void run() {
    display();
    move();
  }

  void display() {
    background(backgrounds);
    image(ball, loc.x, loc.y, ball.width, ball.height);
  }
  void hitBottom() {
    if (loc.y + ball.height > height) {
      lives--;
      loc.set(0, height/10);
      vel.set(0,0);
      jumping = true;
    }
  }
  void hitPlatform() {
    if (vel.y >= 0 && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + ball.height)) == color(0) && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + 3*ball.height/4)) != color(0)) {
      jumping = false;
    } else if (vel.y <= 0 && backgrounds.get(int(loc.x+ball.width/2), int(loc.y)) == color(0) && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + ball.height/4)) != color(0)) {
      vel.y *= -1;
    } else {
      jumping = true;
    }
  }
}