int numLayers = 20;

void setup() {
  size(800, 600);
  for (int i = 0; i < numLayers; i++) {
    float x = random(width);
    float y = random(height);
    float numPoints = random(50, 200);
    float radius = random(50, 200);
    drawSwirl(x, y, numPoints, radius);
  }
}

void drawSwirl(float x, float y, float numPoints, float radius) {
  float angleStep = TWO_PI / numPoints;
  beginShape();
  for (float angle = 0; angle < TWO_PI; angle += angleStep) {
    float xOffset = cos(angle) * radius * noise(angle);
    float yOffset = sin(angle) * radius * noise(angle);
    float px = x + xOffset;
    float py = y + yOffset;
    vertex(px, py);
  }
  endShape(CLOSE);
}
