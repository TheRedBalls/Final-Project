
class StartScreen {
  int mode;
  void StartScreen() {
    mode = 0;
  }
  void display() {
    if (mode==0) {
      size(500, 500);
      textAlign(CENTER);
      textSize(25);
      fill(255);
      text("The Adventures Of...", width/2, 100);
      textSize(60);
      fill(255, 0, 0);
      text("REDBALL!!!", width/2, 200);
      ellipse(width/2, 300, 100, 100);
      rect(10, 470, 120, 25);
      textSize(15);
      fill(0);
      text("INSTRUCTIONS", 70, 487); 
      fill(255, 0, 0);
      rect(190, 420, 120, 50);
      textSize(25);
      fill(0);
      text("START!", 250, 455);
      fill(255, 0, 0);
      rect(370, 470, 120, 25); 
      textSize(15);
      fill(0);
      text("CREDITS", 430, 487);
    }
    if (mode==1) {
      background(0);
    }
    if (mode==2) {
      background(56);//currentGame = "maze";
    }
    if (mode==3) {
      background(255);
    }
  }
  void mouseClicked() {
    if (10<=mouseX && mouseX<=130 && 470<=mouseY && mouseY<=495) {
      mode = 1;
    }
    if (190<=mouseX && mouseX<=310 && 420<=mouseY && mouseY<=470) {
      mode = 2;
    }
    if (370<=mouseX && mouseX<=490 && 470<=mouseY && mouseY<=495) {
      mode = 3;
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
}