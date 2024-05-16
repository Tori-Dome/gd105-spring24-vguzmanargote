void setup() {
  fullScreen();
}

void draw() {
  background(0);
  stroke(255);
  translate(width/2, height);
  branch(200);
}

void branch(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > 4) {
    pushMatrix();
    rotate(PI/4);
    branch(len * 0.67);
    popMatrix();
    pushMatrix();
    rotate(-PI/4);
    branch(len * 0.67);
    popMatrix();
  }
}
