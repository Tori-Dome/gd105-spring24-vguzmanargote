float x, y;

void setup() {
  size(400, 400);
  x = width/2;
  y = height/2;
}

void draw() {
  fill(random(255), random(255), random(255), 10);
  noStroke();
  ellipse(x, y, 20, 20);
  x += random(-5, 5);
  y += random(-5, 5);
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}
