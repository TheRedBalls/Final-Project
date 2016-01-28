TableTennis tableTennis;

void setup() {
  size(500, 500, P3D);
  frameRate(50);
  tableTennis = new TableTennis();
}

void draw() {
  tableTennis.display();
}

void mouseClicked() {
  if (!tableTennis.start) {
    if (tableTennis.mode == 0) {
      if (mouseX >= 13*width/48 && mouseX <= 19*width/48 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        tableTennis.difficulty = "Easy";
        tableTennis.speed = 5;
        tableTennis.paddle[0].diam = 250;
      } else if (mouseX >= 7*width/16 && mouseX <= 9*width/16 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        tableTennis.difficulty = "Normal";
        tableTennis.speed = 10;
        tableTennis.paddle[0].diam = 200;
      } else if (mouseX >= 29*width/48 && mouseX <= 35*width/48 && mouseY >= 3*height/32 && mouseY <= 5*height/32) {
        tableTennis.difficulty = "Hard";
        tableTennis.speed = 15;
        tableTennis.paddle[0].diam = 150;
      } else if (mouseX >= 2*width/5 && mouseX <= 3*width/5 && mouseY >= 4*height/5 && mouseY <= 9*width/10) {
        tableTennis.mode = 1;
        tableTennis.t = 30;
      }
    } else if (tableTennis.s1+tableTennis.s2 != 0) {
      if (mouseX >= 2*width/5 && mouseX <= 3*width/5 && mouseY >= 4*height/5 && mouseY <= 9*width/10) {
        tableTennis.s1 = 0;
        tableTennis.s2 = 0;
        tableTennis.mode = 0;
      }
    } else {
      if (mouseX >= width-30 && mouseY >= height-20 && mouseY <= height-10) {
        tableTennis.t = 0;
      }
    }
  }
}