void setup() {
  size(400, 100);
}

void draw() {
  background(255);
  
  // Draw clock face
  stroke(0);
  line(50, 50, width-50, 50);
  for (int i = 1; i <= 12; i++) {
    float x = map(i, 1, 12, 50, width-50);
    line(x, 40, x, 60);
    textAlign(CENTER, CENTER);
    text(i, x, 70);
  }
  
  // Draw line indicator
  float indicatorX = map(second(), 0, 59, 50, width-50);
  strokeWeight(4);
  line(indicatorX, 30, indicatorX, 70);
}
