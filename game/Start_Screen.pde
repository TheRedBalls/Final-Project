void startScreen () {
  background(128);
  size(500, 500);
  textAlign(CENTER);
  textSize(25);
  fill(255);
  text("The Adventures Of...", width/2, 100);
  textSize(60);
  text("REDBALL!!!", width/2, 200);
  fill(255,0,0);
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