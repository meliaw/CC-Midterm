class Slice {
  // instance variables 
  int t1x1, t1x2, t1x3, t1y1, t1y2, t1y3;
  int t2x1, t2x2, t2x3, t2y1, t2y2, t2y3;
  int speed;
  
  
  // constructor
  Slice() {
    this.t1x1 = 0;
    this.t1x2 = 0;
    this.t1x3 = 450;
    this.t1y1 = 0;
    this.t1y2 = 700;
    this.t1y3 = 300;
    
    this.t2x1 = 1000;
    this.t2x2 = 1000;
    this.t2x3 = 550;
    this.t2y1 = 100;
    this.t2y2 = 700;
    this.t2y3 = 500;
    this.speed = 10;
  }
  
  void display() {
    // left triangle
    noStroke();
    fill(150, 200, 250);
    triangle(t1x1, t1y1, t1x2, t1y2, t1x3, t1y3);
    
    // right triangle
    triangle(t2x1, t2y1, t2x2, t2y2, t2x3, t2y3);

  }
  
  void slide() {
    t1x1 += speed;
    t1x2 += speed;
    t1x3 += speed;
    t1y1 -= speed;
    t1y2 -= speed;
    t1y3 -= speed;
    
    t2x1 -= speed;
    t2x2 -= speed;
    t2x3 -= speed;
    t2y1 += speed;
    t2y2 += speed;
    t2y3 += speed;
  }
}
