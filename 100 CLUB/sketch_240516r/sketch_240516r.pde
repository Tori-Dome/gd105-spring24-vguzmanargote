int numFlowers = 20;

void setup() {
  size(800, 600);
  drawLayeredFlowers(numFlowers);
}

void drawLayeredFlowers(int numFlowers) {
  for (int i = 0; i < numFlowers; i++) {
    float centerX = random(width);
    float centerY = random(height);
    float petalSize = random(20, 100);
    int numPetals = int(random(5, 20));
    drawFlower(centerX, centerY, petalSize, numPetals);
  }
}

void drawFlower(float centerX, float centerY, float petalSize, int numPetals) {
  float angle = TWO_PI / numPetals;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float x = centerX + cos(a) * petalSize;
    float y = centerY + sin(a) * petalSize;
    vertex(x, y);
    x = centerX + cos(a + angle / 2) * (petalSize / 2);
    y = centerY + sin(a + angle / 2) * (petalSize / 2);
    vertex(x, y);
  }
  endShape(CLOSE);
}
