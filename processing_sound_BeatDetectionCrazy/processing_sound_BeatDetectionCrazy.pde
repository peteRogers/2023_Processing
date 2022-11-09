import processing.sound.*;
BeatDetector beatDetector;
SoundFile soundfile;
ArrayList<mover> a = new ArrayList();

void setup() {
  size(640, 640);
  background(255);
  soundfile = new SoundFile(this, "drumBeat.wav");

  soundfile.loop();
  noStroke();
  beatDetector = new BeatDetector(this);
  beatDetector.input(soundfile);
  
}      

void draw() {
  fill(0, 0, 0, 99);
  rect(0, 0, width, height);
  
  float f = map(mouseX, 0, width, 0, 0.5);
  float t = map(mouseY, 0, height, 0, 2);
  
   if (beatDetector.isBeat()) {
   
    a.add(new mover(new PVector(random(0,width), 20)));
   
    
  }
  
  for(int i = 0; i < a.size(); i ++){
    mover m = a.get(i);
    
    m.update();
    if(m.p.y > height){
      a.remove(m);
    }
    
  }
 // tint(0, 0, 255);
}

void keyPressed(){
  
}

void mousePressed(){

}

class mover{
  float s = 2;
  float a = 20;
  PVector v;
  PVector p;
  String ms = ""+round(random(0, 1));
  public mover(PVector p){
    this.p = p;
    v = new PVector(random(-5, 5), round(random(-1,-4)));
  }
  
  void update(){
    fill(255, a);
    textSize(1+s/10);
    text(ms, p.x, p.y);
    p.add(v);
    v.y = v.y+0.1;
     s = s + 15;
     a = a + 2;
     
  }
  
}
