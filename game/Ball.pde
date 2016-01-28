class ball { //birth of redball

  PImage redball;
  PVector loc;

  ball() {
    redball = loadImage("ActualRedBallCharacter.jpg");
    loc = new PVector(mouseX, mouseY);
  }
}