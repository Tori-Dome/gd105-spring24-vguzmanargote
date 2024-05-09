float angle = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(radians(angle));
  fill(0, 255, 0);
  ellipse(0, 0, 100, 50);
  angle += 1;
}
