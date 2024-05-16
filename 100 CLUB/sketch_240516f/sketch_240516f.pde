int numPatterns = 20;

void setup() {
  size(800, 600);
  for (int i = 0; i < numPatterns; i++) {
    float x = random(width);
    float y = random(height);
    drawAbstractPattern(x, y);
  }
}

void drawAbstractPattern(float x, float y) {
  float size = random(50, 200);
  for (int i = 0; i < 10; i++) {
    float px = random(x - size, x + size);
    float py = random(y - size, y + size);
    float angle = random(TWO_PI);
    float len = random(10, size);
    float x2 = px + cos(angle) * len;
    float y2 = py + sin(angle) * len;
    line(px, py, x2, y2);
  }
}
