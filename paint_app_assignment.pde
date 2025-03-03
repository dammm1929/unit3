PImage mang;
boolean mangOn;
color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;
int percent;
color selected;

float shade;
float sliderX;
int change;


color redorange = lerpColor(red, orange, .50);
color orangeyellow = lerpColor(orange, yellow, .50);
color yellowgreen = lerpColor(yellow, green, .50);














void setup() {
  size(1000,1000);
  background(255);
  percent = 0;
  //strokeWeight(5);
  mang = loadImage("mango.png");
  mangOn = false;
  sliderX = 300;
  change = 0;
}

void draw() {

  stroke(0);
  strokeWeight(1);
  fill(#646464);
  rect(0,750, 1000,250);
  
  tactile(860,0, 130,150);
  strokeWeight(3);
  rect(860,0,130,150);
  image(mang, 850,0, 150,150);
  
  

  //color buttons

  tactile(300);
  fill(red);
  //stroke(red);
  rect(300, 850, 75, 50);

  tactile(375);

  fill(orange);
  //stroke(orange);
  rect(375, 850, 75, 50);

  tactile(450);
  fill(yellow);
  //stroke(yellow);
  rect(450, 850, 75, 50);
  
  tactile(525);
  fill(green);
  //stroke(green);
  rect(525, 850, 75, 50);
  
  tactile(600);
  fill(cyan);
  //stroke(cyan);
  rect(600, 850, 75, 50);
  
  tactile(675);
  fill(blue);
  //stroke(blue);
  rect(675, 850, 75, 50);
  
  tactile(750);
  fill(purp);
  //stroke(purp);
  rect(750, 850, 75, 50);

  stroke(#000000);
  fill(selected);
  circle(920, 875, 100);
  
  if (change == 1 && mouseX > 300 && mouseX < 825) {
    sliderX = mouseX;
  }

  //shade = map(sliderX, 100,700, 0,255);
  stroke(#000000);
  line(300,950,825,950);
  circle(sliderX,950,35);


  
  
  
  
  
  
}

//slider function
void mouseReleased() {
  change = 0;
}



//color tactileness
void tactile (int x) {
  if (mouseY > 850 && mouseY < 900 && mouseX > x && mouseX < x + 75) {
    stroke(#000000);
  } else {
    noStroke();
  }
}


void mousePressed() {
  
  //slider function
  if (mouseX > 300 && mouseX < 825 && mouseY > 937.5 && mouseY < 967.5) {
    change = 1;
  }
  
  
  
//color display
  if (mouseX > 300 && mouseX < 375 && mouseY > 850 && mouseY < 900) {
    selected = red;
  }

  if (mouseX > 375 && mouseX < 450 && mouseY > 850 && mouseY < 900) {
    selected = orange;
  }

  if (mouseX > 450 && mouseX < 525 && mouseY > 850 && mouseY < 900) {
    selected = yellow;
  }
  if (mouseX > 525 && mouseX < 600 && mouseY > 850 && mouseY < 900) {
    selected = green;
  }

  if (mouseX > 600 && mouseX < 675 && mouseY > 850 && mouseY < 900) {
    selected = cyan;
  }

  if (mouseX > 675 && mouseX < 750 && mouseY > 850 && mouseY < 900) {
    selected = blue;
  }
  
  if (mouseX > 750 && mouseX < 825 && mouseY > 850 && mouseY < 900) {
    selected = purp;
  }
  
  
  //mango sticker
  if (mouseX > 850 && mouseX < 1000 && mouseY > 0 && mouseY < 150) {
    mangOn = !mangOn;
  }
}



void mouseDragged() {
  if (mangOn == false) {
    strokeWeight(5);
    stroke(0);
  if (mouseY < 750) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  } else {
    image(mang, mouseX - 50, mouseY - 50, 100,100);
  }
}



void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
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
