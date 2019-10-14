class Ambient {
  // instance variables
  int xPos;
  int yPos;
  int circleSize;
  int growth;
  color c;
  
  // constructor 
  Ambient() {
    this.xPos = (int)random(width);
    this.yPos = (int)random(height);
    this.circleSize = (int)random(100, 350);
    this.growth = 15;
    this.c = color(random(255), random(255), random(255), 150);
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(xPos, yPos, circleSize, circleSize);
  }
  
  void grow() {
    circleSize += growth;
  }
}
