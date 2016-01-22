class Platform {
  PImage ball; 
  PVector loc;
  float x, y;
  PImage backgrounds;


  Platform() {
    backgrounds = loadImage("bg.jpg");
    ball = loadImage("ActualRedBallCharacter.jpg"); 
    loc = new PVector(width/2, height/2);
  }

  void move() {
    if (keyPressed) {
      if (keyCode == UP) {
        y = y-1;
      }
      if (keyCode == DOWN) {
        y = y+1;
      }
      if (keyCode == RIGHT) {
        x = x+1;
      }
      if (keyCode == LEFT) {
        x = x-1;
      }
    }
  }


  void display() {
    image(backgrounds, 0, 50);
    image(ball, loc.x, loc.y, ball.width, ball.height);
    move();
  }
}