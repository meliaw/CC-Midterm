class Minuet {
  // instance varibales
  SoundFile minuet;
  String fileName;
  char character;
  
  // constructor 
  Minuet(PApplet p, String name) {
    this.fileName = name;
    //this.character = letter;
    minuet = new SoundFile(p, fileName); 
  }
  
  void play() {
    minuet.play();
  }
  
}
