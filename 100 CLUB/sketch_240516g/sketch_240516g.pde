void setup() {
  size(800, 600);
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < 20; i++) {
    int c = color(random(255), random(255), random(255));
    drawRainbowSpiral(50 + i * 10, c);
  }
}

void drawRainbowSpiral(float radius, color c) {
  strokeWeight(3);
  beginShape();
  for (float theta = 0; theta < TWO_PI * 5; theta += 0.05) {
    float x = radius * cos(theta);
    float y = radius * sin(theta);
    stroke(c);
    vertex(x, y);
  }
  endShape();
}
