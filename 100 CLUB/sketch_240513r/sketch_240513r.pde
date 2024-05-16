void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawHypnoticCircles(x, y);
  }
}

void drawHypnoticCircles(float x, float y) {
  float radius = 10;
  for (int r = 10; r <= 100; r += 10) {
    for (float theta = 0; theta < TWO_PI; theta += PI / 50) {
      float px = x + cos(theta) * r;
      float py = y + sin(theta) * r;
      float diameter = map(sin(theta * 10), -1, 1, 5, 50);
      ellipse(px, py, diameter, diameter);
    }
  }
}
