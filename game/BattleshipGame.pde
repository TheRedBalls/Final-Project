class BattleshipGame {
  boolean playing;
  int[][] computerBoard = new int[25][25]; //mumber of rows and columns
  int tries;
  int[] shipLengths;
  
  BattleshipGame() {
    playing = true;
    shipLengths = new int[3]; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    computerBoard = computerSetup(computerBoard);
    println("Hello");
    
  }
  
  int[][] computerSetup(int[][] computerBoard) {
    int[] shipLengths = new int[3]; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    for(int i = 0; i < computerBoard.length; i++) {
      for(int j = 0; j < computerBoard[i].length; j++) {
        computerBoard[i][j] = 0; 
        print(computerBoard[i][j]);
        for(int k = 0; k < shipLengths.length; k++) {
          int[] randomTarget = {int(random(computerBoard.length)), int(random(computerBoard[0].length))}; //columns, rows
          int randomDirection = int(random(2)); //0 is down, 1 is right
          //check to make sure place can be placed in the given direction
          print(place(randomTarget, randomDirection, computerBoard));
          
        }
      }
      println("");
    }
    return computerBoard;
  }
  
  int[][] place(int[] target, int randomDirection, int[][] gameBoard) {
    for(int i = 0; i < shipLengths.length; i++) {
      if(randomDirection == 0) {
        if(target[0]+i < gameBoard.length-1) { //if not out of bounds
          if(gameBoard[target[0]+i][target[1]] != 0) { //if the square is already occupied 
            //return false;
          }
        } 
      }
     else if(randomDirection == 1) {
       if(target[0]+i < gameBoard[0].length-1) { //if not out of bounds
          if(gameBoard[target[0]][target[1]+i] != 0) { //if the square is already occupied
            //return false;
          }
        }
     }
    
    }
    return gameBoard;
  }
  
  
}