float diameter = 50;
float growRate = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  fill(0, 0, 255);
  ellipse(0, 0, diameter, diameter);
  diameter += growRate;
  if (diameter > 100 || diameter < 50) {
    growRate *= -1;
  }
}
