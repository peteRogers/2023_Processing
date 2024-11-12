JSONArray json;

void setup() {
  size(800, 600);
 
  json = loadJSONArray("https://zenquotes.io/api/quotes");
  println(json);
  println(json.size());
  String quote = json.getJSONObject(0).getString("q");
  println(quote);
}

void draw(){
 
}
