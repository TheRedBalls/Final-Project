class Maze {
  PImage maze = loadImage("maze.jpg");
  PVector loc = new PVector(width/2, height/2);
  float vel = 2.5;
  float diam = 30;
  float rot = -PI/2;

  void display() {
    background(255);
    imageMode(CENTER);
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

    stroke(0);
    fill(255, 0, 0);
    ellipse(width/2, height/2, diam, diam);

    if (keyPressed) {
      if (keyCode == RIGHT) {
        rot += 0.15;
      } else if (keyCode == LEFT) {
        rot -= 0.15;
      }
      if (keyCode == SHIFT) {
        vel *= 1.05;
      } else if (vel > 2.5) {
        vel *= 0.95;
      }
    }
  }
}