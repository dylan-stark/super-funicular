class Walker {
  int x;
  int y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    int choice = int(random(4));
    int gait = int(random(1, 8));
    
    if (choice == 0) {
      x += gait;
    } else if (choice == 1) {
      x -= gait;
    } else if (choice == 2) {
      y += gait;
    } else {
      y -= gait;
    }
  }
}
