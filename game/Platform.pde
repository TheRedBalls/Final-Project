class Platform {

  int x, y, l, w;
  void platform() {
    x= 0;
    y=0;
    l=50;
    w=25;
  }
  void display() {
    fill(255);
    rect(x, y, l, w);

  FloatList length;
  StringList right;
  
  void Platform() {
    length = new FloatList();
    right = new StringList();

  }
}