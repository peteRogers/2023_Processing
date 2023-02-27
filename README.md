# Processing 3 Day



PImage win;
void setup(){
  size(600,600);
  win = loadImage("stainWindow.png");
  background(255);
  colorMode(HSB);
  imageMode(CENTER);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotate(radians(mouseX));
  image(win, 0, 0,width, height);
}
