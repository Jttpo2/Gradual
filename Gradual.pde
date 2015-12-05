int threshold = 50;
final int min = 0;
final int max = 100;
float measurement;

void setup() {
  size(400,400);
}

void draw() {
  background(210);
  measurement = map(mouseY, height, 0, min, max);
  
  fill(0);
  int fontSize = 32;
  textSize(fontSize);
  text(measurement, width/2 + width/6, height/2);
  
  println(measurement);
}