class Button {
  // Member Variables
  int x, y, w, h;
  String val;
  boolean over;
  color c1, c2;

  // Constructor
  Button(int x, int y, int w, int h, String val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
  }

  // Draw Button
  void display() {
    stroke(0);
    if (over) {
      fill(c2);
    } else {
      fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
    textAlign(CENTER);
    fill(0);
    textSize(14);
    text(val, x, y+5);
  }

  // Detect if mouse is over button
  void hover(int tempX, int tempY) {
    over = tempX>x-w/2 && tempX<x+w/2 && tempY>y-h/2 && tempY<y+h/2;
  }
}
