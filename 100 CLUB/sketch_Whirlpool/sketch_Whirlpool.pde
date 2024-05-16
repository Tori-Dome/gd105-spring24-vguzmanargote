float a = 0.1;
float b = 0.2;
float c = 0.3;
float theta = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  fill(#94b5e3);
  float r = a + b * theta;
  float x = r * cos(theta);
  float y = r * sin(theta);
  ellipse(x, y, 5, 5);
  theta -= c;
}
