void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  translate(width/2, height/2);
  float angle = radians(frameCount);
  float radius = map(sin(angle), -1, 1, 100, 300);
  float x = radius * cos(angle);
  float y = radius * sin(angle);
  noFill();
  stroke(0);
  ellipse(x, y, 50, 50);
}
