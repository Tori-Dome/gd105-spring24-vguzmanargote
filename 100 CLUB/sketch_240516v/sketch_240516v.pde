int numWaves = 20;

void setup() {
  size(800, 600);
  drawLayeredPerlinWaves(numWaves);
}

void drawLayeredPerlinWaves(int numWaves) {
  for (int i = 0; i < numWaves; i++) {
    float yOffset = random(1000);
    drawPerlinWave(yOffset);
  }
}

void drawPerlinWave(float yOffset) {
  beginShape();
  for (float x = 0; x < width; x += 10) {
    float y = map(noise(x * 0.01, yOffset), 0, 1, 0, height);
    vertex(x, y);
  }
  endShape();
}
