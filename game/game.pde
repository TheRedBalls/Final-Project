int num = 25;
int mode=0;


boolean grid [] [] = new boolean[num][];
String currentGame;

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
  background(0);
  if (currentGame == "startScreen") {
    mode = 0;
  }
  if(mode == 0){
    size(500, 500);
    textAlign(CENTER);
    textSize(25);
    fill(255);
    text("The Adventures Of...", width/2, 100);
    textSize(60);
    fill(255, 0, 0);
    text("REDBALL!!!", width/2, 200);
    ellipse(width/2, 300, 100, 100);
    rect(10, 470, 120, 25);
    textSize(15);
    fill(0);
    text("INSTRUCTIONS", 70, 487); 
    fill(255, 0, 0);
    rect(190, 420, 120, 50);
    textSize(25);
    fill(0);
    text("START!", 250, 455);
    fill(255, 0, 0);
    rect(370, 470, 120, 25); 
    textSize(15);
    fill(0);
    text("CREDITS", 430, 487);
  }
if(mousePressed == true && 10 =< mouseX =< 130 && 470 =< mouseY =< 495){
  mode = 1;
}
if(mode == 1) {
  fill(34, 24, 78);
}
  ellipse(50,50,50,50);
  
  if (currentGame == "maze") {
    println("The maze is the current game.");
  }
  if(currentGame == "battleship") {
    if (mousePressed) {
      int x = round(num*mouseX/width);
      int y = round(num*mouseY/height);
      grid[x][y] = true;
    }
    for (int i = 0; i < num; i++) {
      for (int j = 0; j < num; j++) {
        if (grid[i][j]==true) {
          fill(0, 255, 0);
          rect(i*width/num, j*height/num, width/num, height/num);
        }
      }
    }
  }
}