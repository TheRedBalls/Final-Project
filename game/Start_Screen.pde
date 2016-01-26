class StartScreen {
  PImage RedBall;
  int mode = 0;

  void display() {
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
    } else if (mode == 4) {
      currentGame = "maze"; //this should actually send them into the maze game
      noLoop();
    } else if (mode == 3) {
      background(0);
      fill(255);
      textSize(15);
      //text("Lead Programmers: Jason Wong and Skanda Rao", width/2, );
      //text("Graphics Designer: Myia Samuels", width/2, );
      //text("User Interface: Nafisa", width/2, );
      //text("De"
      noLoop();
    }
  }



  void startScreen () {
    background(128);
    size(500, 500);
    textAlign(CENTER);
    textSize(25);
    fill(255);
    text("The Adventures Of...", width/2, 100);
    textSize(60);
    text("REDBALL!!!", width/2, 200);
    fill(255, 0, 0);
    ellipse(width/2, 300, 100, 100);
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
  }
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
    }
  else if (mode==2) {
  background(0);
  fill(255);
  textSize(25);
  text("INSTRUCTIONS FOR MAZE GAME", width/2, height/6);
  textSize(15);
  text("Guide the ball through the maze.", width/2, height/4+25);
  text("Use the left and right arrow keys to turn the maze.", width/2, height/4+75);
  text("If the ball hits the black wall, you lose a life.", width/2, height/4+125);
  text("You will also be sent back to the center of the maze.", width/2, height/4+175);
  text("You have 9 lives.  Get ready.", width/2, height/4+225);
  fill(255, 0, 0);
  rect(200, 425, 100, 50);
  textAlign(CENTER);
  fill(0);
  textSize(25);
  text("START!", width/2, 460);
}
  }
}