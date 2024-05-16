void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawPlasma(x, y);
  }
}

void drawPlasma(float x, float y) {
  float gridSize = 10;
  for (float i = 0; i < width; i += gridSize) {
    for (float j = 0; j < height; j += gridSize) {
      float cx = x + cos(i) * 50 * noise(i);
      float cy = y + sin(j) * 50 * noise(j);
      float dist = dist(x, y, cx, cy);
      float shade = map(dist, 0, 100, 255, 0);
      fill(shade);
      noStroke();
      rect(i, j, gridSize, gridSize);
    }
  }
}
