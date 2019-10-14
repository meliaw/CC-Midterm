class Trio {
  // instance varibales
  SoundFile trio;
  String fileName;
  char character;
  
  // constructor 
  Trio(PApplet p, String name) {
    this.fileName = name;
    //this.character = letter;
    trio = new SoundFile(p, fileName); 
  }
  
  void play() {
    trio.play();
  }
  
}
