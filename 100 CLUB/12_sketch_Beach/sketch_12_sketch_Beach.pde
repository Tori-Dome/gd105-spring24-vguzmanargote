void setup() {
  size(800, 600);
  background(255, 204, 153);
  drawBeach();
}

void drawBeach() {
  // Draw sand
  fill(255, 255, 153);
  rect(0, 400, 800, 200);
  
  // Draw water
  fill(0, 153, 255);
  rect(0, 0, 800, 400);
  
  // Draw palm trees
  drawPalmTree(100, 440);
  drawPalmTree(400, 500);
  drawPalmTree(700, 470);
}

void drawPalmTree(int x, int y) {
  fill(139, 69, 19);
  rect(x - 5, y - 100, 10, 100);
  fill(0, 153, 0);
  triangle(x - 50, y - 100, x + 5, y - 200, x + 60, y - 100);
}
