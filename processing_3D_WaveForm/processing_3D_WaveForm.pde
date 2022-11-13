
import processing.sound.*;

SoundFile sample;
Waveform waveform;
ArrayList <PShape> lines;
float y = 0;
PVector v = new PVector(0,0);

// Define how many samples of the Waveform you want to be able to read at once
int samples = 1000;

public void setup() {
   fullScreen(P3D);
  background(255);
   pixelDensity(2);
  lines = new ArrayList();
  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "drumBeat.wav");
  sample.loop();

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);
  waveform.input(sample);
  background(0);
  fill(0, 0, 0);
}

public void draw() {
  // Set background color, noFill and stroke style
 
  translate(0,1000,-500);
  //rotateY(map(mouseX,0,width,-PI,PI));
  rotateX(map(90,height,0,-PI,PI));
  background(0);
  stroke(255);
  strokeWeight(2);
 // noFill();

  // Perform the analysis
  waveform.analyze();
  
  PShape line = createShape();
  line.beginShape();
  line.vertex(0,0,0);
  for(int i = 0; i < samples; i++){
  
    line.vertex(map(i, 0, samples, 0, width), map(waveform.data[i], -1, 1, 0, 600),0);
  
  }
   line.vertex(width,0,0);
  line.endShape(CLOSE);
  lines.add(line);
  for(int i = lines.size()-1; i > 0; i--){
   //  fill(i);
    pushMatrix();
    translate(0,0,+i*50);
     //lines.get(i).fill(i);
    shape(lines.get(i));
    popMatrix();
  }
  if(lines.size() > 255){
    
    
    
  lines.remove(0);
  
  }
 
}
