void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawSpiralGalaxy(x, y);
  }
}

void drawSpiralGalaxy(float x, float y) {
  for (int r = 5; r <= 100; r += 10) {
    for (float theta = 0; theta < TWO_PI * 5; theta += PI / 10) {
      float px = x + cos(theta) * r * noise(theta);
      float py = y + sin(theta) * r * noise(theta);
      point(px, py);
    }
  }
}
