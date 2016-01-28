int mode = 0;
int side = 1;
int s1 = 0, s2 = 0;
float t = 30;
float speed = 10;
boolean start = false;
boolean lost = false;
String difficulty = "Normal";
PVector vantage;
PImage startScreen;
PImage startButton;
PImage menuButton;
PImage easy0;
PImage easy1;
PImage normal0;
PImage normal1;
PImage hard0;
PImage hard1;
PImage instructions;
PImage win;
PImage loss;
PVector inaccuracy;
Paddle [] paddle = new Paddle[2];
Ball ball;

void setup() {
  size(500, 500, P3D);
  imageMode(CENTER);

  startScreen = loadImage("startScreen.jpg");
  startScreen.resize(width,height);

  startButton = loadImage("Start.jpg");
  startButton.resize(width/5,height/10);
  
  menuButton = loadImage("Menu.jpg");
  menuButton.resize(width/5,height/10);
  
  easy0 = loadImage("easy0.jpg");
  easy0.resize(width/8,height/16);
  easy1 = loadImage("easy1.jpg");
  easy1.resize(width/8,height/16);
  normal0 = loadImage("normal0.jpg");
  normal0.resize(width/8,height/16);
  normal1 = loadImage("normal1.jpg");
  normal1.resize(width/8,height/16);
  hard0 = loadImage("hard0.jpg");
  hard0.resize(width/8,height/16);
  hard1 = loadImage("hard1.jpg");
  hard1.resize(width/8,height/16);

  menuButton = loadImage("Menu.jpg");
  menuButton.resize(width/5,height/10);

  menuButton = loadImage("Menu.jpg");
  menuButton.resize(width/5,height/10);

  instructions = loadImage("instructions.jpg");
  instructions.resize(width,height);

  win = loadImage("won.jpg");
  win.resize(width,height);

  loss = loadImage("lost.jpg");
  loss.resize(width,height);

  vantage = new PVector(0, 0, -width/4);

  paddle[0] = new Paddle(width/2, height/2, 0, 255, 255, 0);
  paddle[1] = new Paddle(width/2, height/2, -2*width, 100, 0, 0);

  ball = new Ball(paddle[1].loc.x, paddle[1].loc.y, paddle[1].loc.z+25, 0, 0, 0, 0, 25);
}

void draw() {
  if (start == true) {
    background(0);
    lights();

    if (t > 0) {
      t -= 1/frameRate;

      fill(255);
      arc(width/2, height/4, 50, 50, 3*PI/2-TWO_PI*t/3, 3*PI/2);
    } else if (t < 0) {
      t = 0;
      ball.vel.set(random(-0.2, 0.2), random(-0.2, -0.1), 1);
      ball.vel.mult(speed);
      ball.acc.y = speed/10;
    }

    paddle[0].loc.set(mouseX, mouseY, 0);

    translate(vantage.x, vantage.y, vantage.z);

    pushMatrix();
    translate(width/2, height, -width);
    fill(0, 255, 0);
    noStroke();
    box(width, 10, 2*width);

    translate(0, -5, 0);
    strokeWeight(2);
    stroke(255);
    line(-width/2, 0, 0, width/2, 0, 0);

    rotateX(PI/2);
    translate(0, -1, 0);
    noStroke();
    fill(128, 255, 128);
    ellipse(0, 0, 200, 200);
    popMatrix();

    stroke(paddle[0].c, 100);
    noFill();
    paddle[0].display();

    noStroke();
    fill(paddle[1].c);
    paddle[1].display();

    ball.display();

    if (ball.vel.z < 0) {
      paddle[1].vel.set(ball.loc.x-paddle[1].loc.x, ball.loc.y-paddle[1].loc.y, 0);
      paddle[1].vel.div(150/speed);
      inaccuracy = PVector.random3D();
      inaccuracy.mult(paddle[1].diam-150);
      inaccuracy.mult(2);
      paddle[1].vel.add(inaccuracy);
    } else {
      paddle[1].vel.set(0, 0, 0);
    }

    if (ball.loc.z+ball.r > 0 && lost == false) {
      if (dist(ball.loc.x, ball.loc.y, paddle[0].loc.x, paddle[0].loc.y) <= paddle[0].diam/2) {
        ball.loc.z = -ball.r;
        ball.vel.x *= -10*(ball.loc.x-paddle[0].loc.x)/paddle[0].diam;
        ball.vel.y = -v0(random(2, 3), ball.acc.y, height/2-ball.loc.y);
        ball.vel.z *= -1;
      } else {
        resetGame();
      }
    } else if (ball.loc.z-ball.r < -2*width && lost == false) {
      if (dist(ball.loc.x, ball.loc.y, paddle[1].loc.x, paddle[1].loc.y) <= paddle[1].diam/2) {
        ball.loc.z = ball.r-2*width;
        ball.vel.x *= random(-0.75, -4/3);
        ball.vel.y = -v0(random(2, 3), ball.acc.y, height/2-ball.loc.y);
        ball.vel.z *= -1;
      } else {
        resetGame();
      }
    }
    
    if (s1 == 10 || s2 == 10) {
      start = false;
    }

    for (int i = 0; i < s1; i++) {
      pushMatrix();
      translate(20, height*(i+1)/15, -vantage.z);
      noStroke();
      fill(paddle[0].c);
      ellipse(0, 0, 10, 10);
      popMatrix();
    }

    for (int i = 0; i < s2; i++) {
      pushMatrix();
      translate(width-20, height*(i+1)/15, -vantage.z);
      noStroke();
      fill(paddle[1].c);
      ellipse(0, 0, 10, 10);
      popMatrix();
    }
  } else if (s1 == 0 && s2 == 0) {
    opening();
  } else {
    gameOver();
  }
}

float pos(float v, float a, float t) {
  return v*t+0.5*a*sq(t);
}

float v0(float v, float g, float y) {
  return sqrt(sq(v)-2*g*y);
}

void resetGame() {
  if (side == 0) {
    s2++;
  } else {
    s1++;
  }

  paddle[1].loc.set(width/2, height/2, -2*width);
  ball.loc.set(paddle[1].loc.x, paddle[1].loc.y, paddle[1].loc.z+ball.r);
  ball.vel.set(0, 0, 0);
  ball.acc.set(0, 0, 0);
  t = 3;
}

void opening() {
  if (mode == 0) {
    background(startScreen);
    image(startButton,width/2,17*height/20);
    
    if (difficulty == "Easy") {
      image(easy1, width/3,height/8);
      image(normal0, width/2,height/8);
      image(hard0, 2*width/3,height/8);
    } else if (difficulty == "Normal") {
      image(easy0, width/3,height/8);
      image(normal1, width/2,height/8);
      image(hard0, 2*width/3,height/8);
    } else if (difficulty == "Hard") {
      image(easy0, width/3,height/8);
      image(normal0, width/2,height/8);
      image(hard1, 2*width/3,height/8);
    }
  } else if (mode == 1) {
    background(instructions);
    if (t > 0) {
      t -= 1/frameRate;

      fill(255);
      arc(width/8, height/8, 50, 50, 3*PI/2-TWO_PI*t/30, 3*PI/2);
    } else {
      start = true;
      t = 3;
    }
    textSize(10);
    text("Skip",width-30,height-10);
  }
}

void gameOver() {
  if (s1 > s2) {
    background(win);
  } else {
    background(loss);
  }
  image(menuButton,width/2,17*height/20);
}

void mouseClicked() {
  if (!start) {
    if (mode == 0) {
      if (mouseX >= 13*width/48 && mouseX <= 19*width/48 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        difficulty = "Easy";
        speed = 5;
        paddle[0].diam = 250;
      } else if (mouseX >= 7*width/16 && mouseX <= 9*width/16 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        difficulty = "Normal";
        speed = 10;
        paddle[0].diam = 200;
      } else if (mouseX >= 29*width/48 && mouseX <= 35*width/48 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        difficulty = "Hard";
        speed = 15;
        paddle[0].diam = 150;
      } else if (mouseX >= 2*width/5 && mouseX <= 3*width/5 && mouseY >= 4*height/5 && mouseY <= 9*width/10) {
        mode = 1;
        t = 30;
      }
    } else if (s1+s2 != 0) {
      if (mouseX >= 2*width/5 && mouseX <= 3*width/5 && mouseY >= 4*height/5 && mouseY <= 9*width/10) {
        s1 = 0;
        s2 = 0;
        mode = 0;
      }
    } else {
      if (mouseX >= width-30 && mouseY >= height-20 && mouseY <= height-10) {
        t = 0;
      }
    }
  }
}