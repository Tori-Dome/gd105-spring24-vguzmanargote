float angle = 0;
float spacing = 5;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  for (float r = 0; r < 500; r += spacing) {
    float x = r * cos(angle);
    float y = r * sin(angle);
    ellipse(x, y, 5, 5);
    angle += 0.1;
  }
}
