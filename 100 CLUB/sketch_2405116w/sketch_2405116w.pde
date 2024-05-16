void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawSpiralPattern(x, y);
  }
}

void drawSpiralPattern(float x, float y) {
  float angle = 0;
  float radius = 10;
  for (int i = 0; i < 100; i++) {
    float px = x + cos(angle) * radius;
    float py = y + sin(angle) * radius;
    stroke(random(255), random(255), random(255));
    point(px, py);
    angle += 0.1;
    radius += 0.1;
  }
}
