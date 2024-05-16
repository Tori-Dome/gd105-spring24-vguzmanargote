void setup() {
  size(800, 600);
  background(5);
  for (int i = 0; i < 22; i++) {
    float x = random(width);
    float y = random(height);
    drawFloatingCloud(x, y);
  }
}

void drawFloatingCloud(float x, float y) {
  float cloudSize = random(50, 200);
  for (int i = 0; i < 10; i++) {
    float px = x + random(-cloudSize, cloudSize);
    float py = y + random(-cloudSize/2, cloudSize/2);
    stroke(255);
    point(px, py);
  }
}
