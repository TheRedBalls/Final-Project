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
  background = loadImage("platformbackground.jpg");
  ball = loadImage("ActualRedBallCharacter.jpg"); 
  loc = new PVector(x,y);


  
}

void keyPressed(){
 if (key == CODED){
  if (keyCode == UP){
   y = y-1; 
  }
  if (keyCode == DOWN){
   y = y+1; 
  }
  if(keyCode == RIGHT){
   x = x+1; 
  }
  if(keyCode == LEFT){
   x = x-1; 
  }
 }
}


void display() {
   image(background,0,0);
   image(ball,loc.x,loc.y);
   
   
  }
}







------------------------------------------------------------------------------------
  PImage ball; 
  PVector loc;
  float x, y;


  Platform() {
    x = 0;
    y = 0;
    backgrounds = loadImage("redBallCharacter.jpg");
    ball = loadImage("ActualRedBallCharacter.jpg"); 
    loc = new PVector(width/2,height/2);
  }

 void keyPressed() {
   if (key == CODED) {
     if (keyCode == UP) {
       y = y-1;
     }
     if (keyCode == DOWN) {
       y = y+1;
     }
     if (keyCode == RIGHT) {
       x = x+1;
     }
     if (keyCode == LEFT) {
       x = x-1;
     }
   }
 }


  void display() {
    image(backgrounds,50,50);
    image(ball, loc.x, loc.y, ball.width, ball.height);
  }
}

------------------------------------------
 Platform p;
 
 void setup() { 
  p = new Platform();
}

void draw() {
 p.display(); 
}