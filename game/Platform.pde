class Platform {
  PImage ball; 
  PVector loc, vel, acc;
  boolean jumping = true;
  PImage backgrounds;
  
  Platform() {
    backgrounds = loadImage("platformbackground.png");
    backgrounds.resize(500,500);
    ball = loadImage("redBallCharacter.png");
    ball.resize(25,25);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0.1);
    loc = new PVector(0, height/10);
  }


  void move() {  //create function to move ball
    imageMode(CORNER);  //set background to align with the corner
    if (!jumping) {  //if ball is not jumping,..
      vel.set(0, 0);   //..set velocity to 0
    } else {        //if ball is jumping,..
      vel.add(acc);   //..add acceleration to velocity to move faster
    }
    if (keyPressed) {
      if (keyCode == UP) {  //if UP key is pressed..
        if (!jumping) {    //...and the ball is not already jumping...

          vel.y = -5;
          jumping = true;  //...let ball jump up (with velocity of 5)
        }
      } else if (keyCode == DOWN && (loc.x <= width-55 || loc.y >= 90)) {  //if DOWN key is pressed and ball has not reached the door at the top...
        loc.y++;        //move ball down
      } else if (keyCode == DOWN) {  //if DOWN key is pressed when the ball is at the door (end of platform game)...
        currentGame = "startScreen";
        startScreen.mode = 6;         //..go to the startscreen for the battleship game
      } else if (keyCode == RIGHT) {  //if RIGHT key is pressed..
        loc.x++;   //..move ball right
      } else if (keyCode == LEFT) {  //if LEFT key is pressed..
        loc.x--;   //..move key left
      }
    }
    loc.add(vel);
    hitBottom();   //include functions for when the ball hits a platform or the bottom of the screen in the move constructor
    hitPlatform();
  }
  void run() {  //function to run the platform code
    display(); //display the background and ball image
    move();  //code for how the ball moves
  }

  void display() {  //function to display images
    background(backgrounds);  //set background as background image of platforms
    image(ball, loc.x, loc.y, ball.width, ball.height);  //display ball image with location PVectors
  }
  void hitBottom() { //function for when the ball hits the bottom of the screen
    if (loc.y + ball.height > height) {  //if the bottom of the ball hits the bottom of the screen..
      lives--;  //..lose a life..
      loc.set(0, height/10); //..reset ball location to above the bottom left platform..
      vel.set(0, 0);  //..set velocity to 0..
      jumping = true; //..and set jumping to true (so can't jump while falling to the bottom left platform)
    }
  }

  void hitPlatform() {  //function for when ball hits the platforms

    if (vel.y >= 0 && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + ball.height)) == color(0) && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + 3*ball.height/4)) != color(0)) {
      jumping = false;  //if bottom of the ball is on top of platform, stop moving
    } else if (vel.y <= 0 && backgrounds.get(int(loc.x+ball.width/2), int(loc.y)) == color(0) && backgrounds.get(int(loc.x+ball.width/2), int(loc.y + ball.height/4)) != color(0)) {
      vel.y *= -1;  //if top of ball hits bottom of platform, ball falls down
    } else {
      jumping = true;  //if centre of ball is not touching top or bottom of platform, ball continues jumping
    }
  }
}