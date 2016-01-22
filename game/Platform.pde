class Platform {
  PImage ball; 
  PVector loc, vel, acc;
  boolean jumping = false;
  PImage backgrounds;


  Platform() {
    backgrounds = loadImage("bg.jpg");
    ball = loadImage("ActualRedBallCharacter.jpg"); 
    vel = new PVector(0, 0);
    acc = new PVector(0, 0.1);
    loc = new PVector(width/2, height/2);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
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
    hitBottom();
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
    print("jumping now");
    if (loc.y + ball.width > height) {
      loc.y = height - ball.width; 
      jumping = false;
    }
  }
}