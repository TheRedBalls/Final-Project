class Maze {
  PImage maze = loadImage("maze.jpg");
  PVector loc = new PVector(width/2, height/2);
  PImage ball = loadImage("redBallCharacter.png");
  float velOriginal = 4;
  float vel = velOriginal;
  int diam = 30;
  float rot = -PI/2;

  void display() {
    background(255);
    imageMode(CENTER);
    ball.resize(diam, diam);
    maze.resize(width*3, height*3);

    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    translate(loc.x-width/2, loc.y-height/2);
    image(maze, 0, 0);
    popMatrix();
    filter(THRESHOLD);

    loc.x += vel*sin(rot);
    loc.y += vel*cos(rot);

    if (blue(get(width/2, height/2)) <= 5) {
      lives--;
      rot = -PI/2;
      loc.set(width/2, height/2);
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

    if (dist(loc.x, loc.y, width/2, height/2) >= 3*width/2) {
      currentGame = "startScreen";
      startScreen.mode = 7;
    }
  }
}