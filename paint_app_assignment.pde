PImage mang;
PImage pom;
PFont retro;
boolean pomOn;
boolean mangOn;
color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;
color selected;
int change2;
int stamptact;

float shade;
float sliderX;
float sliderY;
int change;
float size;
float size2;
float offset;
float sizestroke;

float advanselect;

color redorange = lerpColor(red, orange, advanselect);
color orangeyellow = lerpColor(orange, yellow, advanselect);
color yellowgreen = lerpColor(yellow, green, advanselect);
color greencyan = lerpColor(green, cyan, advanselect);
color cyanblue = lerpColor(cyan, blue, advanselect);
color bluepurp = lerpColor(blue, purp, advanselect);


void setup() {
  size(1000, 1000);
  background(255);
  //strokeWeight(5);
  mang = loadImage("mango.png");
  pom = loadImage("pomlo.png");
  pomOn = false;
  mangOn = false;
  sliderX = 300;
  sliderY = 300;
  change = 0;
  change2 = 0;
  offset = 10;
  size = 5;
  size2 = 100;
  retro = createFont("Eight-Bit Madness.ttf", 45);
  stamptact = 255;
}

void draw() {
  stroke(0);
  strokeWeight(1);
  fill(#646464);
  rect(0, 750, 1000, 250);
  rect(0, 0, 100, 1000);


  //stamp tactality
  
  if (mangOn == true) {
    fill(220);
  } else {
    fill(255);
  }
  
  tactile2(860, 0, 130, 150);
  strokeWeight(3);
  rect(860, 0, 130, 150);
  image(mang, 850, 0, 150, 150);
  
  if (pomOn == true) {
    fill(220);
  } else {
    fill(255);
  }
  
  tactile2(730, 0, 130, 150);
  strokeWeight(3);
  rect(730, 0, 130, 150);
  image(pom, 730, 6, 125, 130);

  //left buttons
  fill(255);
  textFont(retro);
  fill(0);
  textSize(23);

  tactile(50, 770, 30);
  circle(50, 770,60);

  tactile(50, 845, 30);
  circle(50, 845, 60);

  tactile(50, 920, 30);
  circle(50, 920, 60);

  fill(0);
  text("Clear", 25, 775);
  text("Save", 27, 850);
  text("Load", 27, 925);


  //colour slider
  stroke(#000000);
  line(150, 950, 850, 950);
  fill(0);
  circle(sliderX, 950, 35);
  if (sliderX > 200 && sliderX <= 300) {
    advanselect = (sliderX - 200)/100;
    selected = redorange;
  }
  redorange = lerpColor(red, orange, advanselect);

  if (sliderX > 300 && sliderX <= 400) {
    advanselect = (sliderX - 300)/100;
    selected = orangeyellow;
  }
  orangeyellow = lerpColor(orange, yellow, advanselect);

  if (sliderX > 400 && sliderX <= 500) {
    advanselect = (sliderX - 400)/100;
    selected = yellowgreen;
  }
  yellowgreen = lerpColor(yellow, green, advanselect);

  if (sliderX > 500 && sliderX <= 600) {
    advanselect = (sliderX - 500)/100;
    selected = greencyan;
  }
  greencyan = lerpColor(green, cyan, advanselect);

  if (sliderX > 600 && sliderX <= 700) {
    advanselect = (sliderX - 600)/100;
    selected = cyanblue;
  }
  cyanblue = lerpColor(cyan, blue, advanselect);

  if (sliderX > 700 && sliderX <= 800) {
    advanselect = (sliderX - 700)/100;
    selected = bluepurp;
  }
  bluepurp = lerpColor(blue, purp, advanselect);

  //width slider
  stroke(#000000);
  line(50, 130, 50, 330);
  fill(0);
  circle(50, sliderY, 20);
  circle(50, 50, size);
  size = map(sliderY, 130, 330, 50, 0);
  size2 = map(sliderY, 130, 330, 100, 30);
  offset = map(sliderY, 130, 330, 50, 10);



  //color buttons

  tactile(150);
  fill(red);
  //stroke(red);
  rect(150, 850, 100, 50);

  tactile(250);

  fill(orange);
  //stroke(orange);
  rect(250, 850, 100, 50);

  tactile(350);
  fill(yellow);
  //stroke(yellow);
  rect(350, 850, 100, 50);

  tactile(450);
  fill(green);
  //stroke(green);
  rect(450, 850, 100, 50);

  tactile(550);
  fill(cyan);
  //stroke(cyan);
  rect(550, 850, 100, 50);

  tactile(650);
  fill(blue);
  //stroke(blue);
  rect(650, 850, 100, 50);

  tactile(750);
  fill(purp);
  //stroke(purp);
  rect(750, 850, 100, 50);

  stroke(#000000);
  fill(selected);
  circle(920, 875, 100);

  if (change == 1 && mouseX > 150 && mouseX < 850) {
    sliderX = mouseX;
  }
  if (change2 == 1 && mouseY > 130 && mouseY < 330) {
    sliderY = mouseY;
  }
}

//slider function
void mouseReleased() {
  change = 0;
  change2 = 0;
}




//color tactileness
void tactile (int x) {
  if (mouseY > 850 && mouseY < 900 && mouseX > x && mouseX < x + 100) {
    stroke(#000000);
  } else {
    noStroke();
  }
}

//save and load functions
void saveImage(File f) {
  if (f != null) {
    //PImage canvas = get( 71, 1, width-71, height-1);
    PImage canvas = get(100, 0, 900, 750);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 100, 0);
      n += 1;
    }
  }
}

  //tactile(50, 770, 60);
  //circle(50, 770,60);

  //tactile(50, 845, 60);
  //circle(50, 845, 60);

  //tactile(50, 920, 60);
  //circle(50, 920, 60);

  //fill(0);
  //text("Clear", 25, 775);
  //text("Save", 27, 850);
  //text("Load", 27, 925);


void mousePressed() {
  //clear button
  if (dist(50, 770, mouseX, mouseY) < 30) {
    fill(255);
    noStroke();
    rect(100, 0, 900, 750);
  }

  //save button
  if (dist(50, 845, mouseX, mouseY) < 30) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }

  //loud button
  if (dist(50, 920, mouseX, mouseY) < 30) {
    selectInput("Pick an image to load", "openImage");
  }


  //slider function
  if (mouseX > 150 && mouseX < 850 && mouseY > 937.5 && mouseY < 967.5) {
    change = 1;
  }

  if (mouseX > 35 && mouseX < 65 && mouseY > 130 && mouseY < 330) {
    change2 = 1;
  }



  //color display
  if (mouseX > 150 && mouseX < 250 && mouseY > 850 && mouseY < 900) {
    selected = red;
    sliderX = 200;
  }

  if (mouseX > 250 && mouseX < 350 && mouseY > 850 && mouseY < 900) {
    selected = orange;
    sliderX = 300;
  }

  if (mouseX > 350 && mouseX < 450 && mouseY > 850 && mouseY < 900) {
    selected = yellow;
    sliderX = 400;
  }
  if (mouseX > 450 && mouseX < 550 && mouseY > 850 && mouseY < 900) {
    selected = green;
    sliderX = 500;
  }

  if (mouseX > 550 && mouseX < 650 && mouseY > 850 && mouseY < 900) {
    selected = cyan;
    sliderX = 600;
  }

  if (mouseX > 650 && mouseX < 750 && mouseY > 850 && mouseY < 900) {
    selected = blue;
    sliderX = 700;
  }

  if (mouseX > 750 && mouseX < 850 && mouseY > 850 && mouseY < 900) {
    selected = purp;
    sliderX = 800;
  }


  //mango sticker
  if (mouseX > 860 && mouseX < 1000 && mouseY > 0 && mouseY < 150) {
    mangOn = !mangOn;
    stamptact = 230;
    pomOn = false;
    
  }
  if (mouseX > 730 && mouseX < 860 && mouseY > 0 && mouseY < 150) {
    pomOn = !pomOn;
    mangOn = false;
  }
}



void mouseDragged() {
  if (mangOn == false && pomOn == false) {
    strokeWeight(size);
    stroke(selected);
    if (mouseY < 750 && mouseX > 100) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
  
  if (mangOn == true) {
    if (mouseY < 750 && mouseX > 100) {
      image(mang, mouseX - offset, mouseY - offset, size2, size2);
    }
  }
    
  if (pomOn == true) {
    if (mouseY < 750 && mouseX > 100) {
      image(pom, mouseX - offset, mouseY - offset, size2, size2);
      }
  }
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(211,211,211);
  } else {
    fill(255);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(211,211,211);
  } else {
    fill(255);
  }
}

void tactile2(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(200,200,200);
  }
}


void showOnOff() {
  if (mangOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
  if (pomOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
