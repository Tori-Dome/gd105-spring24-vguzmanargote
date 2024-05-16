void setup() {
  size(800, 600);
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    drawRipplePattern(x, y);
  }
}

void drawRipplePattern(float x, float y) {
  for (float r = 20; r <= 100; r += 20) {
    float alpha = map(r, 20, 100, 255, 0);
    noFill();
    stroke(255, alpha);
    ellipse(x, y, r * 2, r * 2);
  }
}
