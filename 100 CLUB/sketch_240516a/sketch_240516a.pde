int numTrees = 20;

void setup() {
  size(800, 600);
  for (int i = 0; i < numTrees; i++) {
    float x = random(width);
    float y = height;
    float len = random(50, 200);
    float angle = -HALF_PI;
    drawTree(x, y, len, angle);
  }
}

void drawTree(float x, float y, float len, float angle) {
  if (len > 2) {
    float sw = map(len, 2, 200, 1, 10);
    strokeWeight(sw);
    float branchAngle = random(PI / 6, PI / 4);
    float newLen = len * random(0.6, 0.8);
    float x1 = x + cos(angle) * len;
    float y1 = y + sin(angle) * len;
    line(x, y, x1, y1);
    drawTree(x1, y1, newLen, angle - branchAngle);
    drawTree(x1, y1, newLen, angle + branchAngle);
  }
}
