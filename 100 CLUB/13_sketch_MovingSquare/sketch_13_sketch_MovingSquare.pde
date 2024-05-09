float x = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  rect(x, height/2 - 25, 50, 50);
  x += 1;
  if (x > width) {
    x = 0;
  }
}
