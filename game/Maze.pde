class Maze {
  PImage maze = loadImage("maze.png");
  PVector loc = new PVector(width/2,height/2);

  void display() {
    maze.resize(width*5,height*5);
    imageMode(CENTER);
    image(maze,loc.x,loc.y);
  }
}