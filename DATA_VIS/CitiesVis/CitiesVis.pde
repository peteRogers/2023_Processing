import processing.pdf.*;
// A JSON object
ArrayList<City> cities;


void setup() {
  size(2000,1000);
  pixelDensity(2);
  loadData();
  textAlign(CENTER, CENTER);
   fill(0);
   textSize(10);
   strokeWeight(0.2);
   smooth();
}

void draw() {
  background(255);
   for (City b : cities) {  
        b.display();
  }
  
}



 void loadData() {
  // Load JSON file
  JSONArray json = loadJSONArray("cities.json");
  cities = new ArrayList<City>();

  for (int i = 0; i < json.size(); i++) {
    // Get each object in the array
    JSONObject city = json.getJSONObject(i); 
    float lat = city.getFloat("lat");
    float lng = city.getFloat("lng");
    String name = city.getString("asciiname");
    String code = city.getString("fcode");
    cities.add(new City(lat, lng, name, code));
      
  }

}
  
