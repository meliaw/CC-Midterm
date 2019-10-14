class Bubbles {
  // instance variables
  int xPos;
  int yPos;
  int circleSize;
  int speed;
  color c;
  
  // constructor
  Bubbles() {
    this.xPos = (int)random(width);
    this.yPos = (int)random(height, 2 * height);
    this. circleSize = (int)random(10, 100);
    this.speed = (int)random(10, 15);
    c = color(random(118, 255), random(255), 255, random(50, 255));
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(xPos, yPos, circleSize, circleSize);
  }
  
  void fly() {
    yPos -= speed;
  }
}
