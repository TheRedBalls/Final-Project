int num = 25;

boolean grid [] [] = new boolean[num][];
String currentGame;
BattleshipGame shipGame;

void setup() {
  size(500, 500);
  noStroke();
  for (int i = 0; i < num; i++) {
    grid[i] = new boolean[num];
    for (int j = 0; j < num; j++) {
      grid[i][j]=false;
    }
  }
  currentGame = "startScreen";
}
void draw() {
  if(currentGame == "maze") {
    println("The maze is the current game.");
    shipGame = new BattleshipGame();
  }
  background(0);
  if (currentGame == "startScreen") {
    startScreen();
  }

  if (currentGame == "maze") {
    println("The maze is the current game.");
  }
  currentGame = "battleship";
  if(currentGame == "battleship") {
    shipGame = new BattleshipGame();
    noLoop(); //testing
  }
}