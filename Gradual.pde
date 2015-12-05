int threshold = 50;
float visualThreshold; 
final int min = 0;
final int max = 100;
float input;
float level;
float visualLevel;

color green = #7FEF23;
color lightGrey = 150;
color darkGrey = 110;
color black = 50;
color inputBar = #EF2361;

void setup() {
  size(400,600);
   
  visualThreshold = map(threshold, min, max, height, 0);
  level = threshold;
  visualLevel = map(level, min, max, height, 0);
}

void draw() {
  input = map(mouseY, height, 0, min, max);
  
  level = level + (input - threshold) * 0.01; 
  if (level >= max) {
    level = max;
  } else if (level < min) {
    level = min;
  }
  visualLevel = map(level, min, max, height-1, 0);
  
  background(darkGrey);
  
  stroke(black);
  line(width/10, visualThreshold, width/2, visualThreshold);
  stroke(inputBar);
  fill(inputBar);
  rect(width/10 + width/20, visualThreshold, width*0.3, mouseY-height/2);
  
  stroke(green);
  fill(green);
  rect(width/2 + width/10, visualLevel, width/1.1, height);
  
  fill(lightGrey);
  int fontSize = 32;
  textSize(fontSize);
  text(input, width/10, height/12);
  println(input);
}