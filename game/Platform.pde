class Platform {
  PImage rect; 
  PImage ball; 
  PVector loc;
  float x,y;
  //float diam;
  //PVector loc;
 
Ball() {
  x = 0;
  y = 0;
  rect = loadImage("platformbackground.jpg");
  ball = loadImage("ActualRedBallCharacter.jpg"); 
  loc = new PVector(x,y);


  
}

void keyPressed(){
 if (key == CODED){
  if (keyCode = UP){
   y = y-1; 
  }
  if (keyCode = DOWN){
   y = y+1; 
  }
  if(keyCode = RIGHT){
   x = x+1; 
  }
  if(keyCode = LEFT){
   x = x-1; 
  }
 }
}


void display() {
   image(rect,0,0);
   image(ball,loc.x,loc.y);
   
   
  }
}