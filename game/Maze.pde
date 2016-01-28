class Maze {
  PImage maze = loadImage("maze.jpg");                //add images of maze and ball
  PImage ball = loadImage("redBallCharacter.png");
  PVector loc = new PVector(0, 0);        //create a location vector for the maze
  float velOriginal = 4;          //define and set the original velocity of the maze under the ball
  float vel = velOriginal;        //define and initialize the velocity to the original velocity
  int diam = 30;      //set the diameter of the ball
  float rot = -PI/2;    //define and initialize the original rotation of the image

  Maze() {
    ball.resize(diam, diam);        //resize all images
    maze.resize(width*3, height*3);
  }

  void display() {
    background(255);      //background is white
    imageMode(CENTER);    //center all images

    pushMatrix();                    //draw maze at location with the rotation given
    translate(width/2, height/2);
    rotate(rot);
    translate(loc.x, loc.y);
    image(maze, 0, 0);
    popMatrix();
    filter(THRESHOLD);

    loc.x += vel*sin(rot);
    loc.y += vel*cos(rot);

    if (blue(get(width/2, height/2)) <= 5) {
      lives--;
      rot = -PI/2;
      loc.set(0, 0);
    }

    image(ball, width/2, height/2);

    if (keyPressed) {
      if (keyCode == RIGHT) {
        rot += 0.1;
      } else if (keyCode == LEFT) {
        rot -= 0.1;
      }
      if (keyCode == SHIFT) {
        if (vel <= 2*velOriginal) {
          vel *= 1.05;
        }
      } else if (vel > velOriginal) {
        vel *= 0.95;
      }
    }

    if (dist(loc.x, loc.y, 0, 0) >= 3*width/2) {
      currentGame = "startScreen";
      startScreen.mode = 7;
    }
  }
}