class Ball {
  PVector loc, vel, acc;
  float r;

  Ball(float x, float y, float z, float vx, float vy, float vz, float g, float rad) {
    loc = new PVector(x,y,z);
    vel = new PVector(vx,vy,vz);
    acc = new PVector(0,g,0);
    r = rad;
  }
  
  void display() {
    pushMatrix();
    translate(loc.x,loc.y,loc.z);
    fill(255,0,0);
    sphere(r);
    popMatrix();    
    
    vel.add(acc);
    loc.add(vel);
    
    strokeWeight(2);    
    for (int i = 0; i < 300; i += 5) {
      if (loc.y+pos(vel.y,acc.y,i) >= height) {
        i = 300;
      }
      if (loc.z+pos(vel.z,acc.z,i) >= 0) {
        stroke(255,0,0);
      } else {
        stroke(255);
      }
      line (loc.x+pos(vel.x,acc.x,i),loc.y+pos(vel.y,acc.y,i),loc.z+pos(vel.z,acc.z,i),loc.x+pos(vel.x,acc.x,i+2),loc.y+pos(vel.y,acc.y,i+2),loc.z+pos(vel.z,acc.z,i+2));
    }
    
    if (loc.y+r > height && loc.x-r > 0 && loc.x+r < width && loc.z-r < 0 && loc.z+r > -2*width) {
      loc.y = height-r;
      vel.y *= -1;
      if (dist(loc.x,loc.z,width/2,-width) <= 100) {
        vel.z *= 1.1;
      }
      if (loc.z <= -width) {
        side = 1;
      } else {
        side = 0;
      }
    } else if (loc.y+r > height) {
      resetGame();
    }
  }
}