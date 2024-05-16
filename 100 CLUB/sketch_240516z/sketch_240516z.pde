int numLayers = 20;

void setup() {
  size(800, 600);
  drawLayeredAbstractCircles(numLayers);
}

void drawLayeredAbstractCircles(int numLayers) {
  for (int i = 0; i < numLayers; i++) {
    float centerX = random(width);
    float centerY = random(height);
    float radius = random(50, 200);
    drawAbstractCircle(centerX, centerY, radius);
  }
}

void drawAbstractCircle(float centerX, float centerY, float radius) {
  float numPoints = random(50, 200);
  beginShape();
  for (float angle = 0; angle < TWO_PI; angle += TWO_PI / numPoints) {
    float x = centerX + cos(angle) * radius * noise(angle);
    float y = centerY + sin(angle) * radius * noise(angle);
    vertex(x, y);
  }
  endShape(CLOSE);
}
