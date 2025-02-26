//pallette of colors
color darkblue = #032EFF;
color lightblue = #03DBFF;
color black = #000000;
color orange = #E09407;
color medblue = #008EFF;
color purp = #9152F7;
int toggle;
color selected;

//CIRCLE BUTTONS RECTANGLE OUTPUT
//void setup() {
//  size(800, 600);
//  strokeWeight(5);
//  stroke(black);
//  selected = #FFFFFF;
//}

//void draw() {
//  background(orange);

//  //buttons
//  tactile(100,100, 50);
//  fill(darkblue);
//  circle(100, 100, 100);

//  tactile (100,300, 50);

//  fill(medblue);
//  circle(100, 300, 100);

//  tactile(100,500, 50);
//  fill (lightblue);
//  circle(100, 500, 100);

//  stroke(black);
//  fill(selected);
//  square(300, 100, 400);
//}

//void tactile (int x, int y, int r) {
//  if (dist(x, y, mouseX, mouseY) < r) {
//    stroke(purp);
//  } else {
//    stroke(black);
//  }
//}

//void mousePressed() {
//  if (dist(100, 100, mouseX, mouseY) < 50) {
//    selected = darkblue;
//  }

//  if (dist(100, 300, mouseX, mouseY) < 50) {
//    selected = medblue;
//  }

//  if (dist(100, 500, mouseX, mouseY) < 50) {
//    selected = lightblue;
//  }
//}



//RECTANGULAR BUTTONS CIRCLE OUTPUT
void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(black);
  selected = #FFFFFF;
  toggle = 1;
}

void draw() {
  background(orange);

  //buttons
  tactile(100);
  fill(darkblue);
  rect(50, 100, 100, 50);

  tactile (300);

  fill(medblue);
  rect(50, 300, 100, 50);

  tactile(500);
  fill (lightblue);
  rect(50, 500, 100, 50);

  stroke(black);
  fill(selected);
  circle(500, 300, 300);
}

void tactile (int y) {
  if (mouseX > 50 && mouseX < 150 && mouseY > y && mouseY < y + 50) {
    stroke(purp);
  } else {
    stroke(black);
  }
}

void mousePressed() {
  if (mouseX > 50 && mouseX < 150 && mouseY > 100 && mouseY < 150) {
    selected = darkblue;
  }

  if (mouseX > 50 && mouseX < 150 && mouseY > 300 && mouseY < 350) {
    selected = medblue;
  }

  if (mouseX > 50 && mouseX < 150 && mouseY > 500 && mouseY < 550) {
    selected = lightblue;
  }
}
