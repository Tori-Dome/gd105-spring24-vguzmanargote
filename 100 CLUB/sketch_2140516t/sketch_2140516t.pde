void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawGlowingOrb(x, y);
  }
}

void drawGlowingOrb(float x, float y) {
  for (int r = 5; r <= 100; r += 5) {
    float alpha = map(r, 5, 100, 255, 0);
    fill(random(255), random(255), random(255), alpha);
    ellipse(x, y, r * 2, r * 2);
  }
}
