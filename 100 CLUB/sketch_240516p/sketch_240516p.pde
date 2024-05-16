void setup() {
  size(800, 600);
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < 22; i++) {
    int c = color(random(255), random(255), random(255));
    drawLissajousFigure(50 + i * 10, c);
  }
}

void drawLissajousFigure(float radius, color c) {
  strokeWeight(3);
  beginShape();
  float freqX = random(1, 5);
  float freqY = random(1, 5);
  for (float t = 0; t < TWO_PI * 5; t += 0.05) {
    float x = radius * sin(freqX * t);
    float y = radius * cos(freqY * t);
    stroke(c);
    vertex(x, y);
  }
  endShape();
}
