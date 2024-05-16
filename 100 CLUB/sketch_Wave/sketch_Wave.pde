float theta = 0;

void setup() {
  fullScreen();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(255);
  noFill();
  beginShape();
  for (float x = -width/2; x < width/2; x += 10) {
    float y = map(sin(theta + x/10), -1, 1, 0, height);
    vertex(x, y);
  }
  endShape();
  theta += 0.05;
}
