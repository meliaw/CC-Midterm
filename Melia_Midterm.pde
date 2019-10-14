import processing.sound.*;

// arrays for different sound files 
Minuet[] minuets = new Minuet[14];
Trio[] trios = new Trio[12];
Slice[] slices = new Slice[1];
Pendulum pend = new Pendulum();
Lasers[] laser = new Lasers[1];
Bubbles[] bubble = new Bubbles[50];
Ambient[] amb = new Ambient[1];

// Booleans for animations 
boolean dPressed = false;
boolean fPressed = false;
boolean gPressed = false;
boolean hPressed = false;
boolean jPressed = false;

void setup() {
  size(1000, 700);
  background(255, 200, 150);

  // Fills Minuet array with audio files
  int minuetStartNum = 1;
  for (int i = 0; i < minuets.length; i ++) {
    //int minuetStartNum = 59;
    String minuetFileName = "M" + minuetStartNum + ".wav";
    minuets[i] = new Minuet(this, minuetFileName);
    minuetStartNum++;
  }

  // Fills Trio array with audio files 
  int trioStartNum = 1;
  for (int i = 0; i < trios.length; i ++) {
    //int trioStartNum = 44;
    String trioFileName = "T" + trioStartNum + ".wav";
    trios[i] = new Trio(this, trioFileName);
    trioStartNum++;
  }
}

void draw() {
  //background(155, 255, 217);
  
  // pendulum animation
  if (gPressed) {
    pushMatrix();
    pend.swing();
    pend.display();
    popMatrix();
  }
  
  // Triangle animation
  if (fPressed) {
    slices[0].display();
    slices[0].slide();
  } 
  
  // Laser Beams
  if(jPressed) {
    laser[0].display();
    laser[0].beams();
  }
  
  // Bubbles
  if(hPressed) {
    for(int i = 0; i < bubble.length; i++) {
      bubble[i].display();
      bubble[i].fly();
    }  
  }
  
  // Ambient 
  if(dPressed) {
    amb[0].display();
    if(amb[0].circleSize <= height * 2){
      amb[0].grow();
    }
  }

}

// plays different music for each key is pressed
void keyPressed() {
  //minuet keys 
  if (key == 'g') {
    minuets[0].play();
    gPressed = true;
  }
  if (key == 'f') {
    minuets[1].play();
    fPressed = true;
    slices[0] = new Slice();
  }
  if (key == 'd') {
    minuets[2].play();
    dPressed = true;
    amb[0] = new Ambient();
  }
  if (key == 's') {
    minuets[3].play();
  }
  if (key == 'a') {
    minuets[4].play();
  }
  if (key == 't') {
    minuets[5].play();
  }
  if (key == 'r') {
    minuets[6].play();
  }
  if (key == 'e') {
    minuets[7].play();
  }
  if (key == 'w') {
    minuets[8].play();
  }
  if (key == 'q') {
    minuets[9].play();
  }
  if (key == 'v') {
    minuets[10].play();
  }
  if (key == 'c') {
    minuets[11].play();
  }
  if (key == 'x') {
    minuets[12].play();
  }
  if (key == 'z') {
    minuets[13].play();
  }

  // trio keys 
  if (key == 'h') {
    trios[0].play();
    for(int i = 0; i < bubble.length; i++) {
      bubble[i] = new Bubbles();
    }
    hPressed = true;
  }
  if (key == 'j') {
    jPressed = true;
    laser[0] = new Lasers();
    trios[1].play();
  }
  if (key == 'k') {
    trios[2].play();
  }
  if (key == 'l') {
    trios[3].play();
  }
  if (key == 'b') {
    trios[4].play();
  }
  if (key == 'n') {
    trios[5].play();
  }
  if (key == 'm') {
    trios[6].play();
  }
  if (key == 'y') {
    trios[7].play();
  }
  if (key == 'u') {
    trios[8].play();
  }
  if (key == 'i') {
    trios[9].play();
  }
  if (key == 'o') {
    trios[10].play();
  }
  if (key == 'p') {
    trios[11].play();
  }
}
