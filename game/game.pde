int num = 25;
int mode=0;

String currentGame;
int lives=9;

Maze maze;
Platform platform;
BattleshipGame shipGame;

StartScreen startScreen;

GameOverScreen gameOverScreen;
StartScreen start;


void setup() {
  size(500, 500);
  noStroke();

  currentGame = "startScreen";
  start = new StartScreen();
  maze = new Maze();

  platform = new Platform();

  shipGame = new BattleshipGame();
  startScreen = new StartScreen();
  gameOverScreen = new GameOverScreen();
}

void draw() {
  background(0);
  if (currentGame == "startScreen") {
    startScreen.display();
  }

  if (currentGame == "maze") {
    maze.display();
  }

  if (currentGame == "platform") {
    platform.run();
  }

  if (currentGame == "battleShipGame") {
    shipGame.display();
  }

  if (currentGame == "gameOverScreen") {
    gameOverScreen.display();
  }

  if (lives > 0) {
    if (currentGame == "maze" || currentGame == "platform" || currentGame == "battleShipGame") {
      fill(128);
      textAlign(CENTER);
      text("Lives: " + lives, width/2, 50);
    }
  } else {
    currentGame = "gameOverScreen";
  }
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
    } else if (startScreen.mode == 2) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) { 
        startScreen.mode = 4;
      }
    }
  } else if (currentGame == "gameOverScreen") {
    if (mouseX >= width/2-100 && mouseX <= width/2+100 && mouseY >= height/2+15 && mouseY <= height/2+65) {
      lives = 9;
      currentGame = "startScreen";
      startScreen.mode = 0;
    }
  }
}