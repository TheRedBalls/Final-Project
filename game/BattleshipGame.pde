class BattleshipGame {
  boolean playing;
  int[][] computerBoard = new int[25][25]; //mumber of rows and columns
  int tries;
  int[] shipLengths;
  
  BattleshipGame() {
    playing = true;
    shipLengths = new int[3]; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    computerBoard = computerSetup(computerBoard);
    
  }
  
  int[][] computerSetup(int[][] computerBoard) {
    int[] shipLengths = new int[3]; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    for(int i = 0; i < computerBoard.length; i++) {
      for(int j = 0; j < computerBoard[i].length; j++) {
        computerBoard[i][j] = 0; 
        print(computerBoard[i][j]);
        for(int k = 0; k < ships.length; k++) {
          int[] randomTarget = [int(random(computerBoard.length)), int(random(computerBoard[0].length)]; //columns, rows
          int randomDirection = int(random(2)); //0 is down, 1 is right
          //check to make sure place can be placed in the given direction
          print(canBePlaced(randomTarget, randomDirection));
          
        }
      }
      println("");
    }
    return ships;
  }
  
  boolean canBePlaced(int[] target, int randomDirection) {
    for(int i = 0; i < shipLength.length; i++) {
      if(randomDirection == 0) {
        if(gameBoard[target[0]+i][target[1]] != 0) { //if the square is already occupied 
          return false;
        }
      } 
    } else if(randomTarget == 1) {
        if(gameBoard[target[0]][target[1]+i] != 0) { //if the square is already occupied
          return false;
        }
    }
    
    return true;
  }
  
  
}