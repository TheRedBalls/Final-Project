class Maze { 
  PImage maze = loadImage("maze.jpg");
  PVector loc = new PVector(width/2, height/2);
  PImage ball = loadImage("redBallCharacter.png");
  float velOriginal = 4;
  float vel = velOriginal;
  int diam = 30;
  float rot = -PI/2;


  void display() { //puts the maze image on the screen

    background(255);
    imageMode(CENTER);
    ball.resize(diam, diam);
    maze.resize(width*3, height*3);

    pushMatrix();
    translate(width/2, height/2);
    rotate(rot); //rotates image
    translate(loc.x-width/2, loc.y-height/2);
    image(maze, 0, 0);
    popMatrix();
    filter(THRESHOLD);

    loc.x += vel*sin(rot);
    loc.y += vel*cos(rot);

    if (get(width/2, height/2) == color(0)) {
      lives--;
      rot = -PI/2;
      loc.set(width/2, height/2);
    }

    image(ball, width/2, height/2);

    if (keyPressed) {
      if (keyCode == RIGHT) { //rotates image to the right
        rot += 0.1;
      } else if (keyCode == LEFT) { //rotates image left
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

    if (dist(loc.x, loc.y, width/2, height/2) >= 3*width/2) {
      currentGame = "startScreen";
      startScreen.mode = 7;
      loc.set(width/2,height/2);
      rot = -PI/2;
    }
  }
}