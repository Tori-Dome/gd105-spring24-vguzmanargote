void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawCurvyLines(x, y);
  }
}

void drawCurvyLines(float x, float y) {
  for (int i = 0; i < 10; i++) {
    float startX = x + random(-100, 100);
    float startY = y + random(-100, 100);
    float endX = x + random(-100, 100);
    float endY = y + random(-100, 100);
    bezier(startX, startY, random(width), random(height), random(width), random(height), endX, endY);
    stroke(random(255), random(255), random(255));
  }
}
