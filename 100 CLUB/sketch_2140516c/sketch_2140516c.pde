void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawSineWavePattern(x, y);
  }
}

void drawSineWavePattern(float x, float y) {
  float amplitude = random(20, 100);
  float frequency = random(0.01, 0.1);
  float phase = random(TWO_PI);
  for (float px = x; px < x + 400; px += 2) {
    float py = y + amplitude * sin(frequency * (px - x) + phase);
    stroke(random(255), random(255), random(255));
    point(px, py);
  }
}
