class StartScreen { //new class
  PImage RedBall;  //declare PImage
  PImage Rectangle;  //declare PImage
  int mode = 0;  //declare integer mode

  void display() {
    rectMode(CORNER);  //set base point of rectangle
    imageMode(CORNER);  //set base point of image
    if (mode == 0) {  //if mode is equal to 0...
      background(0);  //set background color to black
      size(500, 500);  //set canvas size
      textAlign(CENTER);  //align text to center of canvas
      textSize(25);  //set text size to 25
      fill(255);  //set text fill to white
      text("The Adventures Of...", width/2, 100);  //insert text
      textSize(60);  //set text size to 60
      text("REDBALL!!!", width/2, 200);  //insert text
      RedBall=loadImage("redBallCharacter.jpg");  //load redBallCharacter image
      image(RedBall, width/3+25, 250, width/4, height/4);  //insert redBallCharacter image
      fill(255);  //set fill to white
      rect(10, 470, 120, 25);  //insert rectangle
      textSize(15);  //set text size to 15
      fill(0);  //set text fill to black
      text("INSTRUCTIONS", 70, 487);  //insert instructions
      fill(255);  //set fill to white
      rect(190, 420, 120, 50);  //insert rectangle
      textSize(25);  //set text size to 25
      fill(0);  //set text fill to black
      text("START!", 250, 455);  //insert text
      fill(255);  //set text fill to white
      rect(370, 470, 120, 25);  //insert rectangle
      textSize(15);  //set text size
      fill(0);  //set text fill to black
      text("CREDITS", 430, 487);  //insert text
    } else if (mode == 1) {  //if mode is equal to 1...
      background(0);  //set background color to black
      fill(255);  //set text fill to white
      textSize(14);  //set text size to 14
      text("You are playing as Redball: a poor little ball lost in an unknown world.", width/2, height/2-100);  //insert text
      text("Your job?  To guide him through it.", width/2, height/2-50);  //insert text
      text("Use the arrow keys to move.", width/2, height/2);  //insert text
      text("You might have to move the ball, the background, or something else.", width/2, height/2+50);  //insert text  
      text("Who knows.", width/2, height/2+100);  //insert text
      fill(255, 0, 0);  //set fill of rectangle to red
      rect(200, 425, 100, 50);  //insert rectangle
      textAlign(CENTER);  //align text to center
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("BACK", width/2, 460);  //insert text
    } else if (mode==2) {  //if mode is equal to 2...
      background(0);  //set background color to black
      fill(255);  //set text fill to white
      textSize(25);  //set text size to 25
      text("INSTRUCTIONS FOR MAZE GAME", width/2, height/6);   //insert text
      textSize(15);  //set text size to 15
      text("Guide the ball through the maze.", width/2, height/4+25);  //insert text
      text("Use the left and right arrow keys to turn the maze.", width/2, height/4+75);  //insert text
      text("If the ball hits the black wall, you lose a life.", width/2, height/4+125);  //insert text
      text("You will also be sent back to the center of the maze.", width/2, height/4+175);  //insert text
      text("Hold down shift to increase your speed.", width/2, height/4+225);  //insert text
      text("You have " + lives + " lives.  Get ready.", width/2, height/4+275);  //insert text
      fill(255, 0, 0);  //set fill of rectangle to red
      rect(200, 425, 100, 50);  //insert rectangle
      textAlign(CENTER);  //align text to center of canvas
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("START!", width/2, 460);   //insert text
    } else if (mode == 3) {  //if mode is equal to 3
      background(0);  //set background color to black
      fill(255);  //set text fill to white
      textSize(20);  //set text size to 20
      text("Lead Programmers: Jason Wong and Skanda Rao", width/2, height/2-100);  //insert text
      text("Graphics Designer: Myia Samuels", width/2, height/2-50);  //insert text
      text("User Interface: Lubna Lakhwala", width/2, height/2);  //insert text
      text("Debugger: Alison Price", width/2, height/2+50);  //insert text
      text("Project Manager: Nafisa Ahmed", width/2, height/2+100);  //insert text
      fill(255, 0, 0);  //set fill of rectangle to red
      rect(200, 425, 100, 50);  //insert rectangle
      textAlign(CENTER);  //align text to center of canvas
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("BACK", width/2, 460);  //insert text
    } else if (mode == 4) {  //if mode is equal to 4...
      currentGame = "maze";  //set currentGame equal to maze
    } else if (mode == 5) {  //if mode is equal to 5...
      background(0);  //set background color to black
      Rectangle = loadImage("rektangle.png");  //load rektangle image
      Rectangle.resize(100, 50);  //resize image
      fill(255);  //set text fill to white
      textSize(25);  //set text size to 25
      imageMode(CENTER);  //align image to center
      textAlign(CENTER);  //align text to center of canvas
      image(Rectangle, 75, 50);  //insert rektangle image
      text("HUZZAH!", width/2, height/4-25);  //insert text
      textSize(15);  //set text size to 15
      text("You've defeated the evil rectangle and saved your home world!", width/2, height/4+25);  //insert text
      text("Didn't come up much in the actual game.", width/2, height/4+75);  //insert text
      text("But that's what you were doing, and you did it!", width/2, height/4+125);  //insert text
      text("You've unlocked the bonus game: Table Tennis!", width/2, height/4+175);  //insert text
      rectMode(CENTER);  //align rectangle to center of canvas
      fill(255);  //set fill to white
      rect(width/2, 3*height/4-10, 200, 50);  //insert rectangle
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("Table Tennis", width/2, 3*height/4);   //insert text
      fill(255);  //set fill to white
      rect(width/2, 3*height/4+75, 200, 50);  //insert rectangle
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("Main Menu", width/2, 3*height/4+85);   //insert text
    } else if (mode == 6) {  //if mode is equal to 6...
      background(0);  //set background color to black
      textAlign(CENTER);  //align text to center of canvas
      textSize(20);  //set text size to 20
      fill(255);  //set text fill to white
      fill(255, 0, 0);  //set fill of rectangle to red
      rect(200, 425, 100, 50);  //insert rectangle
      textAlign(CENTER);  //align text to center of canvas
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("START!", width/2, 460);  //insert text
      fill(255);  //set text fill to white
      textSize(25);  //set text size to 25
      text("INSTRUCTIONS FOR BATTLESHIP", width/2, 50);   //insert text 
      textSize(14);  //set text size to 14
      textAlign(CENTER);  //align text to center of canvas
      text("FOR THIS BATTLESHIP GAME,", width/2, 120);   //insert text
      text("YOU WILL HAVE TO SEARCH FOR 4 SHIPS ON THE GRID.", width/2, 140);  //insert text
      text("CLICK ON ONE SQUARE AT TIME", width/2, 160);   //insert text
      text("TO POSSIBLY REVEAL THE LOCATION OF A SHIP.", width/2, 180);  //insert text
      text("YOU HAVE A LIMIT OF " + shipGame.moves + " MOVES TO FIND ALL 4 SHIPS.   ", width/2, 200);  //insert text
      text("DON'T LOSE! :D", width/2, 240);  //insert text
    } else if (mode == 7) {  //if mode is equal to 7...
      background(0);  //set background color to black
      textAlign(CENTER);  //align text to center of canvas
      textSize(20);  //set text size to 20
      fill(255);  //set text fill to white
      fill(255, 0, 0);  //set fill of rectangle to red
      rect(200, 425, 100, 50);  //insert rectangle
      textAlign(CENTER);  //align text to center of canvas
      fill(0);  //set text fill to black
      textSize(25);  //set text size to 25
      text("START!", width/2, 460);  //insert text
      fill(255);  //set text fill to white
      textSize(25);  //set text size to 25
      text("INSTRUCTIONS FOR PLATFORM", width/2, 50);   //insert text
      textSize(14);  //set text size to 14
      textAlign(CENTER);  //align text to center of canvas
      text("YOU WILL NOW HAVE TO COMPLETE A PLATFORM GAME!", width/2, 150);   //insert text
      text("USE UP TO JUMP", width/2, 170);   //insert text
      text("USE LEFT/RIGHT TO MOVE", width/2, 190);   //insert text
      text("IF YOU HIT THE BOTTOM OF THE SCREEN, YOU DIE.", width/2, 210);  //insert text
      textSize(25);  //set text size to 25
      text("WHEN YOU GET TO THE DOOR,", width/2, 275);  //insert text
      text("PRESS DOWN TO CONTINUE!", width/2, 300);   //insert text
      text("DON'T LOSE! :D", width/2, 350);  //insert text
    }
  }
}