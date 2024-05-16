int numLayers = 20;

void setup() {
  size(800, 600);
  drawLayeredRadialLines(numLayers);
}

void drawLayeredRadialLines(int numLayers) {
  for (int i = 0; i < numLayers; i++) {
    float numLines = random(5, 30);
    drawRadialLines(width/2, height/2, 200, numLines);
  }
}

void drawRadialLines(float x, float y, float radius, float numLines) {
  float angleStep = TWO_PI / numLines;
  for (float theta = 0; theta < TWO_PI; theta += angleStep) {
    float x1 = x + cos(theta) * radius;
    float y1 = y + sin(theta) * radius;
    float x2 = x + cos(theta + PI) * radius;
    float y2 = y + sin(theta + PI) * radius;
    line(x1, y1, x2, y2);
  }
}
