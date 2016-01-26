<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
String currentGame;
int lives;
=======
//int num = 25;
//int mode=0;
=======
=======

>>>>>>> refs/remotes/origin/development
int num = 25;
int mode=0;
>>>>>>> refs/remotes/origin/lubna-8)

String currentGame;
int lives = 9;

//int num = 25;
//int mode=0;





//boolean grid [] [] = new boolean[num][];
//String currentGame;

//void setup() {
//  size(500, 500);
//  noStroke();
//  for (int i = 0; i < num; i++) {
//    grid[i] = new boolean[num];
//    for (int j = 0; j < num; j++) {
//      grid[i][j]=false;
//    }
//  }



//  //if (currentGame == "maze") {
//  //  println("The maze is the current game.");
//  //}
//  //if(currentGame == "battleship") {
//  //  if (mousePressed) {
//    int x = round(num*mouseX/width);
//    int y = round(num*mouseY/height);
//    grid[x][y] = true;
//  }
//  for (int i = 0; i < num; i++) {
//    for (int j = 0; j < num; j++) {
//      if (grid[i][j]==true) {
//        fill(0, 255, 0);
//        rect(i*width/num, j*height/num, width/num, height/num);
//      }
//    }
//  }
//}
//}

<<<<<<< HEAD
String currentGame;
int lives = 9;
>>>>>>> refs/remotes/origin/development
Maze maze;
Platform platform;
BattleshipGame shipGame;
<<<<<<< HEAD
GameOverScreen gameOverScreen;
=======
StartScreen startScreen;
>>>>>>> refs/remotes/origin/lubna-8)
=======
Maze maze;
Platform platform;
BattleshipGame shipGame;

StartScreen startScreen;

GameOverScreen gameOverScreen;

>>>>>>> refs/remotes/origin/development

void setup() {
  size(500, 500);
  noStroke();
  currentGame = "startScreen";

  maze = new Maze();
  platform = new Platform();
  shipGame = new BattleshipGame();
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

  if (currentGame == "battleShipGame") {
    println("The maze is the current game.");
<<<<<<< HEAD
  }
<<<<<<< HEAD
  
  if(lives > 0){
    text("Lives: " + lives, 50,0);
  } else{
    gameOverScreen.display();
=======
}

void mouseClicked() {
  if (currentGame == "startScreen") {
    if (10<=mouseX && mouseX<=130 && 470<=mouseY && mouseY<=495) {
      startScreen.mode = 1;
    }
    if (190<=mouseX && mouseX<=310 && 420<=mouseY && mouseY<=470) {
      startScreen.mode = 2;
    }
    if (370<=mouseX && mouseX<=490 && 470<=mouseY && mouseY<=495) {
      startScreen.mode = 3;
    }
>>>>>>> refs/remotes/origin/lubna-8)
=======

  if(currentGame == "battleShipGame") {
    shipGame.display();
  }
  
  if(lives > 0){
    text("Lives: " + lives, 50,0);
  } else{
    gameOverScreen.display();

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
    }
>>>>>>> refs/remotes/origin/development
  }
}