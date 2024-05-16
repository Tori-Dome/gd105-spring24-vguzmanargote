void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawPixelArt(x, y);
  }
}

void drawPixelArt(float x, float y) {
  float tileSize = 20;
  for (float px = x; px < x + 100; px += tileSize) {
    for (float py = y; py < y + 100; py += tileSize) {
      float r = random(255);
      float g = random(255);
      float b = random(255);
      fill(r, g, b);
      rect(px, py, tileSize, tileSize);
    }
  }
}
