class Pendulum {
  // instance variables 
  int lineLength;
  int circleSize;
  
  // constructor 
  Pendulum() {
    this.lineLength = 300;
    this.circleSize = 150;
  }
  
  void display() {
    //translate(width / 2, 0);
    stroke(255);
    strokeWeight(3);
    line(0, 0, lineLength, 0);
   
    // draw circle
    noFill();
    stroke(255);
    strokeWeight(10);
    ellipse(lineLength + circleSize / 2, 0, circleSize, circleSize);
  }
  
  void swing() {
    translate(width / 2, 0);
    float angleInDegrees = frameCount % 360;
    float angle = radians(angleInDegrees);
    rotate(angle);
  }
  
  //void echo() {
  //  ellipse(lineLength + circleSize / 2, -25, circleSize, circleSize);
  //}
}
