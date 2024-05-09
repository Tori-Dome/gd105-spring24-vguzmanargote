float scaleFactor = 1.0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  scale(scaleFactor);
  fill(255, 0, 0);
  rect(-50, -50, 100, 100);
  scaleFactor += 0.01;
}
