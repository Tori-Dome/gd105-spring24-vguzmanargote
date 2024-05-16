int numLines = 20;

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < numLines; i++) {
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    drawGlowingLine(x1, y1, x2, y2);
  }
}

void drawGlowingLine(float x1, float y1, float x2, float y2) {
  float numSegments = random(10, 50);
  float deltaX = (x2 - x1) / numSegments;
  float deltaY = (y2 - y1) / numSegments;
  for (int i = 0; i < numSegments; i++) {
    float x = x1 + i * deltaX;
    float y = y1 + i * deltaY;
    float alpha = map(i, 0, numSegments - 1, 255, 0);
    stroke(255, alpha);
    point(x, y);
  }
}
