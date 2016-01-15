int num = 25;

String currentGame;
Maze maze;
Platform platform;
BattleshipGame shipGame;

void setup() {
  size(500, 500);
  noStroke();
  currentGame = "maze";
  
  maze = new Maze();
  platform = new Platform();
  shipGame = new BattleshipGame();
}

void draw() {
  background(0);
  if (currentGame == "startScreen") {
    startScreen();
  }
  if (currentGame == "maze") {
    maze.display();
  }
  if(currentGame == "battleShipGame") {
    println("The maze is the current game.");
  }
}