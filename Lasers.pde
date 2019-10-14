class Lasers {
  // instance variables
  int xPos;
  int yPos;
  int xMove; 
  int yMove;
  int columns;
  int xStep;
  int xSpeed;
  int ySpeed;
  int xDirection;
  int yDirection;
  color c;
  
  // constructor 
  Lasers() {
    this.xPos = (int)random(1000);
    this.yPos = (int)random(700);
    this.xMove = xPos;
    this.yMove = yPos;
    this.columns = (int)random(5, 20);
    this.xStep = 50;
    this.xSpeed = (int)random(20);
    this.ySpeed = (int)random(20);
    this.xDirection = floor(random(2)) * 2 - 1;
    this.yDirection = floor(random(2)) * 2 - 1;
    this.c = color(random(255), random(255), random(255), random(50, 255));
  }
  
  void display() {
    strokeWeight(5);
    stroke(c);
    for(int i = 0; i < columns; i++) {
      line(xPos + xStep * i, yPos, xMove, yMove);
    }
  }
  
  void beams() {
    xMove += xDirection * xSpeed;
    yMove += yDirection * ySpeed;
  }
  
}
