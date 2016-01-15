class Maze {
  PImage maze;
  PVector loc;

  void Maze() {
    maze = loadImage("maze.png");
    loc = new PVector(width/2,height/2);
  }

  void display() {
  }
}