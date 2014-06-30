class Line {
  //  String tweets;
  float lerpVal = 0.03;
  int screenWidth = 40;
  int screenHeight = 100;

  PVector pos = new PVector();
  PVector tpos = new PVector();
  PVector radius = new PVector();
  PVector tradius = new PVector();

  float hourly;

  float cx;
  float cy;

  Line() {
  }


  void update() {
    pos.x = lerp(pos.x, tpos.x, lerpVal);//0.1);
    pos.y = lerp(pos.y, tpos.y, lerpVal);//0.1);
    radius.x = lerp(radius.x, tradius.x, lerpVal);//0.1);
    radius.y = lerp(radius.y, tradius.y, lerpVal);//0.1);
    float hourly; //this number gets updated if we pass a new number to it
  }


  void render() {
    pushMatrix();
    stroke(255);
     rotate(radius.y);
    //    translate(cx, cy);
    //    ellipse(pos.x, pos.y, radius.x, radius.y);
    line(pos.x, pos.y, pos.x, radius.x);
//    rect(pos.x, pos.y, 1, radius.x);
    popMatrix();
  }
}

