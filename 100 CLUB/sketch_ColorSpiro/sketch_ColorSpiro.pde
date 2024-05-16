float R = 100;
float r = 25;
float d = 75;
float theta = 0;
float dTheta = 0.01;

void setup() {
  size(400, 400);
  background(5);
  translate(width/2, height/2);
}

void draw() {
  float x = (R+r) * cos(theta) - d * cos((R+r) / r * theta);
  float y = (R+r) * sin(theta) - d * sin((R+r) / r * theta);
  stroke(map(x, -R-r, R+r, 0, 255), map(y, -R-r, R+r, 0, 255), 255);
  ellipse(x, y, 5, 5);
  theta += dTheta;
}
