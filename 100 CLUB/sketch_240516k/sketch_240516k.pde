void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawSpinningWheel(x, y);
  }
}

void drawSpinningWheel(float x, float y) {
  float numSegments = 10;
  for (int i = 0; i < numSegments; i++) {
    float angle = map(i, 0, numSegments, 0, TWO_PI);
    float px1 = x + cos(angle) * 50;
    float py1 = y + sin(angle) * 50;
    float px2 = x + cos(angle + PI) * 50;
    float py2 = y + sin(angle + PI) * 50;
    line(px1, py1, px2, py2);
  }
}
