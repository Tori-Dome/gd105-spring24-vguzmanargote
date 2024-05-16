int numSpirals = 20;

void setup() {
  size(800, 600);
  drawLayeredSpirals(numSpirals);
}

void drawLayeredSpirals(int numSpirals) {
  for (int i = 0; i < numSpirals; i++) {
    float startX = width / 2;
    float startY = height / 2;
    float startAngle = random(TWO_PI);
    float angleIncrement = random(0.05, 0.2);
    float numPoints = random(100, 500);
    drawSpiral(startX, startY, startAngle, angleIncrement, numPoints);
  }
}

void drawSpiral(float startX, float startY, float startAngle, float angleIncrement, float numPoints) {
  beginShape();
  float angle = startAngle;
  for (int i = 0; i < numPoints; i++) {
    float radius = i * 5;
    float x = startX + cos(angle) * radius;
    float y = startY + sin(angle) * radius;
    vertex(x, y);
    angle += angleIncrement;
  }
  endShape();
}
