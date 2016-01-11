class Battleship {
  int x;
  int y;
  int size; //length of the battleship
  String direction; //to the left or to the bottom
  Battleship(int posx, int posy, int lengthofShip, String directionofShip) {
    x = posx;
    y = posy;
    size = lengthofShip;
    direction = directionofShip;
  }
  
  void display() {
    
  }
}

class BattleshipGame {
  Battleship[] ships = new Battleship[5];
  int[][] board = new int[25][25];
  int tries;
  BattleshipGame() {
    for(int i = 0; i < ships.length; i++) {
      ships[i] = new Battleship(0, 0, 5, "left");
    }
  }
}