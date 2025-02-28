PImage mang;
boolean mangOn;

void setup() {
  size(1000,1000);
  background(255);
  //strokeWeight(5);
  mang = loadImage("mango.png");
  mangOn = false;
}

void draw() {
  fill(255);
  
  stroke(0);
  strokeWeight(1);
  fill(100);
  rect(0,850, 1000,150);
  
  tactile(850,850, 150,150);
  //mangOnOff();
  rect(850,850,150,150);
  image(mang, 850,850, 150,150);
}

void mouseDragged() {
  if (mangOn == false) {
    strokeWeight(5);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(mang, mouseX - 50, mouseY - 50, 100,100);
  }
}

void mousePressed() {
  if (mouseX > 850 && mouseX < 1000 && mouseY > 850 && mouseY < 1000) {
    mangOn = !mangOn;
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    fill(255,255, 0);
  } else {
    fill(255);
  }
}
  
void showOnOff() {
  if (mangOn == true) {
    stroke(255,0,0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
