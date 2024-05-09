float angle = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(angle));
  fill(255, 0, 0);
  square(-50, -50, 100);
  angle += 1;
}
