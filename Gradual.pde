int threshold = 50;
float visualThreshold; 
final int min = 0;
final int max = 100;
float input;
float level;
float visualLevel;

color green = #7FEF23;

void setup() {
  size(400,400);
   
  visualThreshold = map(threshold, min, max, height, 0);
  level = threshold;
  visualLevel = map(level, min, max, height, 0);
}

void draw() {
  level = level + (input - threshold) * 0.01; 
  
  visualLevel = map(level, min, max, height, 0);
  
  
  
  background(110);
  input = map(mouseY, height, 0, min, max);
  
  fill(150);
  int fontSize = 32;
  textSize(fontSize);
  text(input, width/10, height/12);
  
  stroke(50);
  line(width/10, visualThreshold, width/2, visualThreshold);
  
  
  
  stroke(green);
  line(width/2 + width/10, visualLevel, width/1.1, visualLevel);
  
  
  
  println(input);
}