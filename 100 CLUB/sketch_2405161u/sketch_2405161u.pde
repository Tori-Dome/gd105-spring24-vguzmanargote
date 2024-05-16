void setup() {
  size(800, 600);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawConfettiExplosion(x, y);
  }
}

void drawConfettiExplosion(float x, float y) {
  for (int i = 0; i < 100; i++) {
    float px = x + random(-50, 50);
    float py = y + random(-50, 50);
    stroke(random(255), random(255), random(255));
    strokeWeight(random(1, 5));
    point(px, py);
  }
}
