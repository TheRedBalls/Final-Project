class Paddle {
  PVector loc, vel;
  float diam;
  color c;

  Paddle(float x, float y, float z, float r, float g, float b) {
    loc = new PVector(x, y, z);
    vel = new PVector(0, 0, 0);
    c = color(r, g, b);
    diam = 150;
  }
  
  void display() {
    pushMatrix();
    translate(loc.x, loc.y, loc.z);
    ellipse(0, 0, diam, diam);
    line(-diam/2,0,diam/2,0);
    line(0,diam/2,0,-diam/2);
    popMatrix();
    
    loc.add(vel);
  }
}