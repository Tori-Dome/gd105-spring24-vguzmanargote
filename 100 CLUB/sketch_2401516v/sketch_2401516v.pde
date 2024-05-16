void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawRadiatingLines(x, y);
  }
}

void drawRadiatingLines(float x, float y) {
  for (int i = 0; i < 36; i++) {
    float angle = radians(i * 10);
    float len = random(50, 200);
    float endX = x + cos(angle) * len;
    float endY = y + sin(angle) * len;
    stroke(random(255), random(255), random(255));
    line(x, y, endX, endY);
  }
}
