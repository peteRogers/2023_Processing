

class City{
  float lat, lng, x, y;
 
  String name, code;
  
  boolean over = false;
  
  // Create  the Bubble
  City(float lat_, float lng_, String name_, String code_) {
    lat = lat_;
    lng = lng_;
    name = name_;
    code = code_;
    mapCoordinates();
  }
  
  void mapCoordinates(){
     y = map(lat, 90, -90, 0, height);
      x = map(lng, -180, 180, 0, width);
  }
  
  
  
  // Display the Bubble
  void display() {
    stroke(0);
    strokeWeight(2);
    noFill();
    ellipse(x,y,2, 2);
     if(code.equals("PPLC")){
       text(name, x, y);
     }
  }
}
