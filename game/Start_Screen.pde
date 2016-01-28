class StartScreen {
  PImage RedBall;
  PImage Rectangle;
  int mode = 0;

  void display() {
    rectMode(CORNER);
    imageMode(CORNER);
    if (mode == 0) {
      background(0);
      size(500, 500);
      textAlign(CENTER);
      textSize(25);
      fill(255);
      text("The Adventures Of...", width/2, 100);
      textSize(60);
      text("REDBALL!!!", width/2, 200);
      RedBall=loadImage("redBallCharacter.jpg");
      image(RedBall, width/3+25, 250, width/4, height/4);
      fill(255);
      rect(10, 470, 120, 25);
      textSize(15);
      fill(0);
      text("INSTRUCTIONS", 70, 487); 
      fill(255);
      rect(190, 420, 120, 50);
      textSize(25);
      fill(0);
      text("START!", 250, 455);
      fill(255);
      rect(370, 470, 120, 25); 
      textSize(15);
      fill(0);
      text("CREDITS", 430, 487);
    } else if (mode == 1) {
      background(0);
      fill(255);
      textSize(14);
      text("You are playing as Redball: a poor little ball lost in an unknown world.", width/2, height/2-100);
      text("Your job?  To guide him through it.", width/2, height/2-50);  
      text("Use the arrow keys to move.", width/2, height/2);  
      text("You might have to move the ball, the background, or something else.", width/2, height/2+50);  
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
      text("You have " + lives + " lives.  Get ready.", width/2, height/4+275);
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
      text("User Interface: Nafisa Ahmed", width/2, height/2);
      text("Debugger: Alison Price", width/2, height/2+50);
      text("Project Manager: Lubna Lakhwala", width/2, height/2+100);
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
      text("YOU HAVE A LIMIT OF " + shipGame.moves + " MOVES TO FIND ALL 4 SHIPS.   ", width/2, 200);
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