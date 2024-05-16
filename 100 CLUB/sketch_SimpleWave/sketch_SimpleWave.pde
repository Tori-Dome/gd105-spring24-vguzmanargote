float xspacing = 8;
float w;
float theta = 0.0;
float[] yvalues;
int len;

void setup() {
  size(800, 600);
  w = width+16;
  yvalues = new float[int(w/xspacing)];
  len = yvalues.length;
}

void draw() {
  background(255);
  calcWave();
  renderWave();
}

void calcWave() {
  theta += 0.02;
  float x = theta;
  for (int i = 0; i < len; i++) {
    yvalues[i] = sin(x)*height/4;
    x+=0.05;
  }
}

void renderWave() {
  noFill();
  stroke(0);
  strokeWeight(2);
  beginShape();
  for (int x = 0; x < len; x++) {
    vertex(x*xspacing, height/2+yvalues[x]);
  }
  endShape();
}
