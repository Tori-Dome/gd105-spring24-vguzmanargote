void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawTrippyPattern(x, y);
  }
}

void drawTrippyPattern(float x, float y) {
  for (int i = 0; i < 360; i += 10) {
    float startX = x + cos(radians(i)) * 100;
    float startY = y + sin(radians(i)) * 100;
    float endX = x + cos(radians(i + 180)) * 100;
    float endY = y + sin(radians(i + 180)) * 100;
    stroke(random(255), random(255), random(255));
    line(startX, startY, endX, endY);
  }
}
