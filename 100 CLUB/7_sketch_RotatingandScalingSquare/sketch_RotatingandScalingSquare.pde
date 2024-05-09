float angle = 0;
float scaleFactor = 1.0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(radians(angle));
  scale(scaleFactor);
  fill(0, 255, 0);
  square(-50, -50, 100);
  angle += 1;
  scaleFactor += 0.01;
}
