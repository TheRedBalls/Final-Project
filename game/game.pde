int num = 25;
int mode=0;

String currentGame;
int lives=9;


Maze maze;
//Platform platform;
//BattleshipGame shipGame;
//GameOverScreen gameOverScreen;
StartScreen startScreen;

void setup() {
  size(500, 500);
  noStroke();
  currentGame = "startScreen";

  maze = new Maze();
 // platform = new Platform();
//  shipGame = new BattleshipGame();
  startScreen = new StartScreen();
}

void draw() {
  background(0);
  if (currentGame == "startScreen") {
    startScreen.display();
  }
  if (currentGame == "maze") {
    maze.display();
  }
  
/***
  if(lives > 0){
    text("Lives: " + lives, 50,0);
  } else{
    gameOverScreen.display();
  ****/
}

void mouseClicked() {
  if (currentGame == "startScreen") {
    if (startScreen.mode == 0) {
      if (10<=mouseX && mouseX<=130 && 470<=mouseY && mouseY<=495) {
        startScreen.mode = 1;
      }
      if (190<=mouseX && mouseX<=310 && 420<=mouseY && mouseY<=470) {
        startScreen.mode = 2;
      }
      if (370<=mouseX && mouseX<=490 && 470<=mouseY && mouseY<=495) {
        startScreen.mode = 3;
      }
    } else if (startScreen.mode == 1) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) {
        startScreen.mode = 0;
      }
    } else if (startScreen.mode == 3) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) {
        startScreen.mode = 0;
      }
    }
  }
}