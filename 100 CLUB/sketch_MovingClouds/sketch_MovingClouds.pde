float x1 = 0;
float x2 = 200;
float y = 100;

void setup() {
  size(400, 200);
}

void draw() {
  background(25);
  fill(255);
  noStroke();
  ellipse(x1, y, 100, 50);
  ellipse(x2, y, 100, 50);
  x1 += 1;
  x2 += 1.5;
  if (x1 > width + 50) {
    x1 = -50;
  }
  if (x2 > width + 50) {
    x2 = -50;
  }
}
