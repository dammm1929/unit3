color darkblue = #032EFF;
color lightblue = #03DBFF;
color black = #000000;
color orange = #F21D41;
color medblue = #008EFF;
color purp = #9152F7;
int toggle;
color selected;

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
  rect(150, 100, 100, 50);

  tactile (300);

  fill(medblue);
  rect(150, 300, 100, 50);

  tactile(500);
  fill (lightblue);
  rect(150, 500, 100, 50);

  stroke(black);
  fill(selected);
  circle(500, 300, 300);
}

void tactile (int y) {
  if (mouseX > 150 && mouseX < 250 && mouseY > y && mouseY < y + 50) {
    stroke(purp);
  } else {
    stroke(black);
  }
}

void mousePressed() {
  if (mouseX > 150 && mouseX < 250 && mouseY > 100 && mouseY < 150) {
    selected = darkblue;
  }

  if (mouseX > 150 && mouseX < 250 && mouseY > 300 && mouseY < 350) {
    selected = medblue;
  }

  if (mouseX > 150 && mouseX < 250 && mouseY > 500 && mouseY < 550) {
    selected = lightblue;
  }
}
