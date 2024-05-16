int numSigns = 20;

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < numSigns; i++) {
    float x = random(width);
    float y = random(height);
    drawNeonSign(x, y);
  }
}

void drawNeonSign(float x, float y) {
  String text = "NEON";
  textSize(50);
  fill(255, 0, 255);
  textAlign(CENTER, CENTER);
  text(text, x, y);
}
