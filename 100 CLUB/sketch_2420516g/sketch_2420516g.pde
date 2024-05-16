void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawGeometricPattern(x, y);
  }
}

void drawGeometricPattern(float x, float y) {
  float numShapes = random(3, 10);
  float angle = TWO_PI / numShapes;
  float radius = random(50, 200);
  for (float a = 0; a < TWO_PI; a += angle) {
    float px = x + cos(a) * radius;
    float py = y + sin(a) * radius;
    float side = random(20, 100);
    float rot = random(PI);
    pushMatrix();
    translate(px, py);
    rotate(rot);
    fill(random(255), random(255), random(255));
    rect(-side / 2, -side / 2, side, side);
    popMatrix();
  }
}
