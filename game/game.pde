int num = 25;

boolean grid [] [] = new boolean[num][];
String currentGame;

void setup() {
  size(500,500);
  noStroke();
  for (int i = 0; i < num; i++) {
    grid[i] = new boolean[num];
    for (int j = 0; j < num; j++){
      grid[i][j]=false;
    }
  }
  currentGame = "maze";
}
void draw() {
  if(currentGame == "maze") {
    println("The maze is the current game.");
  }
  background(0);
  if(mousePressed) {
    int x = round(num*mouseX/width);
    int y = round(num*mouseY/height);
    grid[x][y] = true;
  }
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++){
      if(grid[i][j]==true){
        fill(0,255,0);
        rect(i*width/num,j*height/num,width/num,height/num);
      }
    }
  }

}