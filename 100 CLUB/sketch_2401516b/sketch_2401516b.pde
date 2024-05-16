void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawSpinningPolygon(x, y);
  }
}

void drawSpinningPolygon(float x, float y) {
  float numSides = int(random(3, 10));
  float radius = random(50, 200);
  float angle = TWO_PI / numSides;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    stroke(random(255), random(255), random(255));
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
