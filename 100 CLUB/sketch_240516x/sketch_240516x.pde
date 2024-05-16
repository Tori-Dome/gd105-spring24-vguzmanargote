int numGalaxies = 20;

void setup() {
  size(800, 600);
  drawLayeredGalaxies(numGalaxies);
}

void drawLayeredGalaxies(int numGalaxies) {
  for (int i = 0; i < numGalaxies; i++) {
    float x = random(width);
    float y = random(height);
    float numStars = random(50, 500);
    drawGalaxy(x, y, numStars);
  }
}

void drawGalaxy(float x, float y, float numStars) {
  for (int i = 0; i < numStars; i++) {
    float r = random(10, 50);
    float d = random(r);
    float theta = random(TWO_PI);
    float dx = cos(theta) * d;
    float dy = sin(theta) * d;
    float starX = x + dx;
    float starY = y + dy;
    ellipse(starX, starY, r, r);
  }
}
