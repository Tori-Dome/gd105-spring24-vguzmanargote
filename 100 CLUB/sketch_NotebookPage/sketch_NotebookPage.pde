void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  // Notebook cover
  fill(255, 204, 0);
  stroke(0);
  rect(50, 50, 300, 350);
  
  // Notebook pages
  fill(255);
  rect(70, 70, 260, 330);
  
  // Lines on pages
  stroke(0);
  for (int i = 0; i < 20; i++) {
    line(80, 80 + i * 15, 330, 80 + i * 15);
  }
  
  // Spiral binding
  noFill();
  beginShape();
  for (float angle = 0; angle < TWO_PI * 3; angle += 0.1) {
    float x = 200 + cos(angle) * 50;
    float y = 190 + sin(angle) * 50;
    vertex(x, y);
  }
  endShape();
}
