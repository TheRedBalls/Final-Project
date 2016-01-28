class ball { //birth of redball

  PImage redball;  //declare ball PImage
  PVector loc;   //declare location PVector

  ball() {  //create ball function
    redball = loadImage("ActualRedBallCharacter.jpg");  //load image of red ball
    loc = new PVector(mouseX, mouseY);  //initialize location PVector
  }
}