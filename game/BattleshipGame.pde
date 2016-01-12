class BattleshipGame {
  boolean playing;
  int[][] computerBoard = new int[25][25]; //mumber of rows and columns
  int tries;
  BattleshipGame() {
    playing = true;
    for(int i = 0; i < computerBoard.length; i++) {
      for(int j = 0; j < computerBoard[i].length; j++) {
        computerBoard[i][j] = 1; 
        print(computerBoard[i][j]);
      }
      println("");
    }
    
  }
  
  int[] computerChoose() {
    int[] ships = new int[5];
    return ships;
  }
  
  
}