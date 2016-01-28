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
      text("You might have to move the ball, the background, or something else.", width/2, height/2+50);  //  
      text("Who knows.", width/2, height/2+100);
      fill(255, 0, 0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("BACK", width/2, 460);
    } else if (mode==2) {
      background(0);
      fill(255);
      textSize(25);
      text("INSTRUCTIONS FOR MAZE GAME", width/2, height/6);
      textSize(15);
      text("Guide the ball through the maze.", width/2, height/4+25);
      text("Use the left and right arrow keys to turn the maze.", width/2, height/4+75);
      text("If the ball hits the black wall, you lose a life.", width/2, height/4+125);
      text("You will also be sent back to the center of the maze.", width/2, height/4+175);
      text("Hold down shift to increase your speed.", width/2, height/4+225);
      text("You have 9 lives.  Get ready.", width/2, height/4+275);
      fill(255, 0, 0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("START!", width/2, 460);
    } else if (mode == 3) {
      background(0);
      fill(255);
      textSize(20);
      text("Lead Programmers: Jason Wong and Skanda Rao", width/2, height/2-100);
      text("Graphics Designer: Myia Samuels", width/2, height/2-50);
      text("User Interface: Lubna Lakhwala", width/2, height/2);
      text("Debugger: Alison Price", width/2, height/2+50);
      text("Project Manager: Nafisa Ahmed", width/2, height/2+100);
      fill(255, 0, 0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("BACK", width/2, 460);
    } else if (mode == 4) {
      currentGame = "maze"; //this should actually send them into the maze game
    } else if (mode == 5) {
      background(0);
      Rectangle = loadImage("rektangle.png");
      Rectangle.resize(100, 50);
      fill(255);
      textSize(25);
      imageMode(CENTER);
      textAlign(CENTER);
      image(Rectangle, 75, 50);
      text("HUZZAH!", width/2, height/4-25);
      textSize(15);
      text("You've defeated the evil rectangle and saved your home world!", width/2, height/4+25);
      text("Didn't come up much in the actual game.", width/2, height/4+75);
      text("But that's what you were doing, and you did it!", width/2, height/4+125);
      text("You've unlocked the bonus game: Table Tennis!", width/2, height/4+175);
      text("Not that you couldn't have played it without beating this.", width/2, height/4+225);
      text("But you officially have our permission.", width/2, height/4+275);
      rectMode(CENTER);
      fill(255);
      rect(width/2, 3*height/4+75, 200, 50);
      fill(0);
      textSize(25);
      text("Start Again?", width/2, 3*height/4+85);
    } else if (mode == 6) {
      background(0);
      textAlign(CENTER);
      textSize(20);
      fill(255);
      fill(255, 0, 0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("START!", width/2, 460);
      fill(255);
      textSize(25);
      text("INSTRUCTIONS FOR BATTLESHIP", width/2, 50); //title of page 
      textSize(14);
      textAlign(CENTER);
      text("FOR THIS BATTLESHIP GAME,", width/2, 120); //instructions
      text("YOU WILL HAVE TO SEARCH FOR 4 SHIPS ON THE GRID.", width/2, 140);
      text("CLICK ON ONE SQUARE AT TIME", width/2, 160); 
      text("TO POSSIBLY REVEAL THE LOCATION OF A SHIP.", width/2, 180);
      text("YOU HAVE A LIMIT OF 20 MOVES TO FIND ALL 4 SHIPS.   ", width/2, 200);
      text("DON'T LOSE! :D", width/2, 240);
    } else if (mode == 7) {
      background(0);
      textAlign(CENTER);
      textSize(20);
      fill(255);
      fill(255, 0, 0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("START!", width/2, 460);
      fill(255);
      textSize(25);
      text("INSTRUCTIONS FOR PLATFORM", width/2, 50); //title of page 
      textSize(14);
      textAlign(CENTER);
      text("YOU WILL NOW HAVE TO COMPLETE A PLATFORM GAME!", width/2, 150); //instructions
      text("USE UP TO JUMP", width/2, 170); 
      text("USE LEFT/RIGHT TO MOVE", width/2, 190); 
      text("IF YOU HIT THE BOTTOM OF THE SCREEN, YOU DIE.", width/2, 210);
      textSize(25);
      text("WHEN YOU GET TO THE DOOR,", width/2, 275);
      text("PRESS DOWN TO CONTINUE!", width/2, 300); 
      text("DON'T LOSE! :D", width/2, 350);
    }
  }
}