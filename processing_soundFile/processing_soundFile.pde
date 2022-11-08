import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(640, 360);
  background(255);
  soundfile = new SoundFile(this, "drumBeat.wav");
  soundfile.loop();
}      

void draw() {
}

void keyPressed(){
  
}

void mousePressed(){

}
