int num = 25;

String currentGame;
int lives=15;


Maze maze; //declare game titles
Platform platform; 
BattleshipGame shipGame; 

StartScreen startScreen;

GameOverScreen gameOverScreen;
StartScreen start;


void setup() {
  size(500, 500); //size of screen
  noStroke();

  currentGame = "startScreen"; //start of the game 
  start = new StartScreen();
  maze = new Maze(); //defining the classes

  platform = new Platform();

  shipGame = new BattleshipGame();
  startScreen = new StartScreen();
  gameOverScreen = new GameOverScreen();
}

void draw() {
  background(0);
  if (currentGame == "startScreen") {
    startScreen.display();
  } //displays each screen based on current game

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
      textSize(25);
      text("Lives: " + lives, width/2, 50);
    } //displays lives if game is in progress
  } else {
    currentGame = "gameOverScreen";
  } //otherwise, shows game over screen aka you lose
}

void mouseClicked() { //allows player to click buttons
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
    } else if (startScreen.mode == 2) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) { 
        currentGame = "maze";
      }
    } else if (startScreen.mode == 3) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) { 
        startScreen.mode = 0;
      }
    } else if (startScreen.mode == 5) {
      if (width/2-100<=mouseX && mouseX<=width/2+100 && 3*height/4+50<=mouseY && mouseY<=3*height/4+100) {
        lives = 15;
        startScreen.mode = 0;
      }
    } else if (startScreen.mode == 6) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) { 
        currentGame = "battleShipGame";
      }
    } else if (startScreen.mode == 7) {
      if (200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475) { 
        currentGame = "platform";
      }
    }
  } else if (currentGame == "gameOverScreen") {
    if (mouseX >= width/2-100 && mouseX <= width/2+100 && mouseY >= height/2+65 && mouseY <= height/2+115) {
      lives = 15;
      currentGame = "startScreen";
      startScreen.mode = 0;
    }
  } else if(currentGame == "battleShipGame") {
    shipGame.squareIsClicked = true;
  }
}