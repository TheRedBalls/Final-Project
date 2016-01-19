class GameOverScreen {
  void display() {
    fill(255, 0, 0);
    textAlign(CENTER);
    text("Game Over!", width/2 + 50, height/2);
    text("You Lose", width/2, height/2);
    text("Start Again?", width/2 - 50, height/2);
  }
}