class BattleshipGame {
  boolean playing;
  int[][] computerBoard = new int[10][10]; //mumber of rows and columns
  boolean[][] revealedBoard = new boolean[10][10];
  int tries;
  int[] shipLengths;

  BattleshipGame() {
    playing = true;
    shipLengths = new int[3]; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    computerBoard = computerSetup(computerBoard);
    revealedBoard = fillFalse(revealedBoard);
  }

  void display() {
    background(0);
    for(int i = 0; i < computerBoard.length; i++) { //set each square to zero
      for(int j = 0; j < computerBoard[i].length; j++) {
        if(revealedBoard[i][j] == true) {
          switch(computerBoard[i][j]) {
            case 2: fill(255, 0, 0); break; 
            case 3: fill(0, 255, 0); break; 
            case 4: fill(0, 0, 255); break; 
            case 5: fill(255, 255, 255); break; 
          }
          rect(i*width/10, j*height/10, width/10, height/10);
        } else {
          fill(135,206,250);
          rect(i*width/10, j*height/10, width/10, height/10);
        }
      }
    }
    checkClick();
  }
  
  void checkClick() {
    //test which square the mouse clicked in if mouse is pressed at all
    if(mousePressed) {
      int[] squareNumber = {mouseX/(width/10), mouseY/(height/10)};
      
      if(squareNumber[0] <= 10 && squareNumber[1] <= 10 && computerBoard[squareNumber[0]][squareNumber[1]] != 0) {
        revealedBoard[squareNumber[0]][squareNumber[1]] = true; 
    for (int i = 0; i < computerBoard.length; i++) { //set each square to zero
      for (int j = 0; j < computerBoard[i].length; j++) {
        if (computerBoard[i][j] != 0) {
          fill(255, 0, 0);
          rect(i*width/10, j*height/10, width/10, height/10);
        };
      }
    }
  }

  //setup the computer battleships
  int[][] computerSetup(int[][] computerBoard) {
    int[] shipLengths = {2, 3, 4, 5}; //to keep track of which ones have been done, ship[0], ship[1], and ship[2]
    for(int i = 0; i < computerBoard.length; i++) { //set each square to zero
      for(int j = 0; j < computerBoard[i].length; j++) {
        computerBoard[i][j] = 0;
      }
    }

    for (int k = 0; k < shipLengths.length; k++) {
      int[] randomTarget = {int(random(computerBoard.length)), int(random(computerBoard[0].length))}; //columns, rows
      int randomDirection = int(random(1)); //0 is down, 1 is right
      //check to make sure place can be placed in the given direction
      computerBoard = place(randomTarget, randomDirection, computerBoard, shipLengths[k]);
    }

    for (int i = 0; i < computerBoard.length; i++) { //set each square to zero
      for (int j = 0; j < computerBoard[i].length; j++) {
        print(computerBoard[i][j]);
      }
      println("");
    }

    return computerBoard;
  }

  //places a ship
  int[][] place(int[] target, int randomDirection, int[][] gameBoard, int shipNumber) {
    int squaresToOccupy = shipNumber;
    boolean completed = false;

    while (completed == false) {
      for (int i = 0; i < squaresToOccupy; i++) {

        if (randomDirection == 0) {
          if (target[0]+i <= gameBoard.length-1) { //if not out of bounds
            if (gameBoard[target[0]+i][target[1]] == 0) { //if the square is not already occupied 
              gameBoard[target[0]+i][target[1]] = shipNumber;
            } else {
              //revert changes
              for (int j = i; j >= 0; j--) {
                gameBoard[target[0]+j][target[1]] = 0;
              }
              target = new int[2];
              target[0] = int(random(computerBoard.length));
              target[1] = int(random(computerBoard[0].length));
              randomDirection = int(random(1));
              completed = false;
              break;
            }
          } else {
            target = new int[2];
            target[0] = int(random(computerBoard.length));
            target[1] = int(random(computerBoard[0].length));
            randomDirection = int(random(1));
            completed = false;
            break;
          }
        } else if (randomDirection == 1) {
          if (target[1]+i <= gameBoard[0].length-1) { //if not out of bounds
            if (gameBoard[target[0]][target[1]+i] == 0) { //if the square is not already occupied
              gameBoard[target[0]][target[1]+i] = shipNumber;
            } else {
              //revert changes
              for(int j = i; j >= 0; j--) {
                gameBoard[target[0]][target[1]+j] = 0;
              }
              target = new int[2];
              target[0] = int(random(computerBoard.length));
              target[1] = int(random(computerBoard[0].length));
              randomDirection = int(random(1));
              completed = false;
              break;
            }
          } else {
            target = new int[2];
            target[0] = int(random(computerBoard.length));
            target[1] = int(random(computerBoard[0].length));
            randomDirection = int(random(1));
            completed = false;
            break;
          }
        }
        completed = true;
      }
    }
    return gameBoard;
  }
  
  boolean[][] fillFalse(boolean[][] board) {
    for(int i = 0; i < board.length; i++) { //set each square to zero
      for(int j = 0; j < board[i].length; j++) {
        board[i][j] = false; 
      }
    }
    return board;
  }
  
  
}