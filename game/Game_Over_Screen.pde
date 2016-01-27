class GameOverScreen {
  void display() {
    background(0);
    fill(255, 0, 0);
    textSize(25);
    textAlign(CENTER);
    text("Game Over!", width/2, height/2-50);
    text("You Lose", width/2, height/2);
    rectMode(CENTER);
    fill(255);
    rect(width/2,height/2+40,200,50);
    fill(0);
    text("Start Again?", width/2, height/2+50);
  }
}