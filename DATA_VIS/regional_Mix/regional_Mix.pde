JSONObject json;

void setup() {
  size(800, 600);
  json = loadJSONObject("https://api.carbonintensity.org.uk/regional/postcode/SE14");
  JSONArray energyData = json.getJSONArray("data").getJSONObject(0).getJSONArray("data").getJSONObject(0).getJSONArray("generationmix");
  println(energyData);
  
  for(int i = 0; i < energyData.size(); i ++){
    println(energyData.getJSONObject(i).getString("fuel"));
    println(energyData.getJSONObject(i).getFloat("perc"));

  }
  
}
