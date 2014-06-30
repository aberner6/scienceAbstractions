Line [] lines;
int lineCount = 10;
int lmargin = 10;
float cx, cy;


void setup() {
  size (300, 300);
//  colorMode(HSB, 360, 100, 100);
  smooth();
  strokeWeight(2);
//  noStroke();
  fill(255);
  lines = new Line[lineCount];
  parse();
}

void parse() {
  for (int i = 0; i< lineCount; i++) {
    Line line = new Line();
    lines[i]=line;
  }
}

void draw() {
  background(0);
  for (int i = 0; i<lineCount; i++) {
    lines[i].update();
    lines[i].render();
  }
}
void prep() {
  for (int i = 0; i< lineCount; i++) {
    if (lines[i] != null) {
      float turnBy = map (i, 0, lineCount, 0, TWO_PI)-HALF_PI; //mapping the index count - which row are we in - to an angle for rotation
      lines[i].tradius.y = turnBy; //send this number to our tweet object
      
      float screenX = map(i, 0, lineCount-1, lmargin, 300); 
      lines[i].cx = screenX;
      lines[i].cy = 0; 
      lines[i].tpos.x = width/2;
      lines[i].tpos.y = height/2;
       lines[i].tradius.x = 100;
    }
  }
}
void one() {
  for (int i = 0; i< lineCount; i++) {
    if (lines[i] != null) {
      float turnBy = map (i, 0, lineCount, HALF_PI, TWO_PI)-HALF_PI; //mapping the index count - which row are we in - to an angle for rotation
      lines[i].tradius.y =turnBy; //send this number to our tweet object
    }
  }
}
void two() {
  for (int i = 0; i< lineCount; i++) {
    if (lines[i] != null) {
//      float turnBy = map (i, 0, lineCount, HALF_PI, TWO_PI)-HALF_PI; //mapping the index count - which row are we in - to an angle for rotation
      lines[i].tradius.y =0; //send this number to our tweet object
    }
  }
}
void three() {
  for (int i = 0; i< lineCount; i++) {
    if (lines[i] != null) {
      float turnBy = map (i, lineCount/2, lineCount, 0, TWO_PI)-HALF_PI; //mapping the index count - which row are we in - to an angle for rotation
      lines[i].tradius.y = turnBy; //send this number to our tweet object
    }
  }
}

void keyPressed() {
  if (key=='o') one();
  if (key=='t') two();
  if (key=='r') three();

  if (key=='p') prep();
}
