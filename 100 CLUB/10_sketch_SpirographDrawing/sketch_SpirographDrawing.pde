float R = 100;
float r = 25;
float d = 50;
float theta = 0;

void setup() {
  size(400, 400);
  background(155);
  smooth();
}

void draw() {
  translate(width/2, height/2);
  float x = (R - r) * cos(theta) + d * cos((R - r) / r * theta);
  float y = (R - r) * sin(theta) - d * sin((R - r) / r * theta);
  fill(random(255), random(255), random(255), 150);
  ellipse(x, y, 10, 10);
  theta += 0.01;
}
