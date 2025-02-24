//pallette of colors
color darkblue = #032EFF;
color lightblue = #03DBFF;
color black = #000000;
color orange = #E09407;
color medblue = #008EFF;
color purp = #9152F7;

//variables for color selection
color selected;


void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(black);
  selected = #FFFFFF;
}

void draw() {
  background(orange);

  //buttons
  tactile(100,100, 50);
  fill(darkblue);
  circle(100, 100, 100);

  tactile (100,300, 50);

  fill(medblue);
  circle(100, 300, 100);

  tactile(100,500, 50);
  fill (lightblue);
  circle(100, 500, 100);

  stroke(black);
  fill(selected);
  square(300, 100, 400);
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(purp);
  } else {
    stroke(black);
  }
}



void mousePressed() {
  if (dist(100, 100, mouseX, mouseY) < 50) {
    selected = darkblue;
  }

  if (dist(100, 300, mouseX, mouseY) < 50) {
    selected = medblue;
  }

  if (dist(100, 500, mouseX, mouseY) < 50) {
    selected = lightblue;
  }
}
