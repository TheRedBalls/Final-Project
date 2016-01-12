class BattleshipGame {
  int[][] board = new int[25][25]; //mumber of rows and columns
  int tries;
  BattleshipGame() {
    for(int i = 0; i < board.length; i++) {
      for(int j = 0; j < board[i].length; j++) {
        board[i][j] = 1; 
      }
    }
  }
  
  
}