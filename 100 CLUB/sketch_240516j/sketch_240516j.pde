void setup() {
  size(800, 600);
  background(255);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawExplodingCircle(x, y);
  }
}

void drawExplodingCircle(float x, float y) {
  for (int r = 10; r <= 100; r += 10) {
    for (float theta = 0; theta < TWO_PI; theta += PI / 10) {
      float px = x + cos(theta) * r;
      float py = y + sin(theta) * r;
      point(px, py);
    }
  }
}
