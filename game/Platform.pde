class Platform {
  PImage ball; 
  PVector loc, vel, acc;
  boolean jumping = true;
  PImage backgrounds;


  Platform() {
    backgrounds = loadImage("platformbackground.fw.png");
    ball = loadImage("ActualRedBallCharacter.jpg"); 
    vel = new PVector(0, 0);
    acc = new PVector(0, 0.1);
    loc = new PVector(0, height/10);
  }

  void move() {
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
      } else if (keyCode == DOWN) {
        loc.y++;
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
    //print("jumping now");
    if (loc.y + ball.width > height) {
      loc.y = height - ball.width; 
      jumping = false;
    }
  }
  void hitPlatform() {
    if (backgrounds.get(int(loc.x), int(loc.y)) == color(0)) {
      jumping = false;
    }
  }
}