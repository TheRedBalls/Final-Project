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

//  currentGame = "startScreen";
//}
//void draw() {
//  background(0);
//  fill(255);
//  if (currentGame == "startScreen") {
//    mode = 0;
//  }
//  if(mode == 0){
//    size(500, 500);
//    textAlign(CENTER);
//    textSize(25);
//    fill(255);
//    text("The Adventures Of...", width/2, 100);
//    textSize(60);
//    fill(255, 0, 0);
//    text("REDBALL!!!", width/2, 200);
//    ellipse(width/2, 300, 100, 100);
//    rect(10, 470, 120, 25);
//    textSize(15);
//    fill(0);
//    text("INSTRUCTIONS", 70, 487); 
//    fill(255, 0, 0);
//    rect(190, 420, 120, 50);
//    textSize(25);
//    fill(0);
//    text("START!", 250, 455);
//    fill(255, 0, 0);
//    rect(370, 470, 120, 25); 
//    textSize(15);
//    fill(0);
//    text("CREDITS", 430, 487);
//  }
//}
//void mouseClicked(){
//  if(10<=mouseX && mouseX<=130 && 470<=mouseY && mouseY<=495){
// mode = 1;
//}
//if(190<=mouseX && mouseX<=310 && 420<=mouseY && mouseY<=470){
//  mode = 2;
//}
//if(370<=mouseX && mouseX<=490 && 470<=mouseY && mouseY<=495){
//  mode = 3;
//}
//if(mode == 1) {
//background(0);
////text("You are playing as Redball: a poor little ball lost in an unknown world.  Your job?  To guide him through it.  The controls   
//noLoop();
//}
//if(mode == 2) {
//currentGame = maze; //this should actually send them into the maze game
//noLoop();
//}
//if(mode == 3) {
//background(255);
//noLoop();
//}
//}

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
    shipGame.display();
  }
}