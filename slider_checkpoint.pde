
color pink = #F21D41;

float sliderX;
float shade;
int change;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX = 200;
  change = 0;
  
}

void draw() {
  background(shade);
  if (change == 1 && mouseX > 100 && mouseX < 700) {
    sliderX = mouseX;
  }
  shade = map(sliderX, 100,700, 0,255);
  stroke(#0781E8);
  line(100,300,700,300);
  circle(sliderX,300,50);
}
void mousePressed() {
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
    change = 1;
  }
}
void mouseReleased() {
  change = 0;
}
  
  
  
  
