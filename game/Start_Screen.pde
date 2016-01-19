class StartScreen {
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
    } else if (mode == 1) {
      background(0);
      fill(255);
      textSize(14);
      text("You are playing as Redball: a poor little ball lost in an unknown world.", width/2, height/2-100);
      text("Your job?  To guide him through it.", width/2, height/2-50);  
      text("Use the arrow keys to move.", width/2, height/2);  
      text("You might have to move the ball, the background, or something else.", width/2, height/2+50);  
      text("Who knows.", width/2, height/2+100);
      fill(255,0,0);
      rect(200, 425, 100, 50);
      textAlign(CENTER);
      fill(0);
      textSize(25);
      text("BACK", width/2, 460);
      noLoop();
      if(mousePressed == true && 200<=mouseX && mouseX<=300 && 425<=mouseY && mouseY<=475){
        startScreen.mode = 0;
       
      }
    } else if (mode == 2) {
      currentGame = "maze"; //this should actually send them into the maze game
      noLoop();
    } else if (mode == 3) {
      background(255);
      noLoop();
    }
  }
}