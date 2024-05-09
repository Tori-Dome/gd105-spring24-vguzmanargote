void setup() {
  size(800, 600);
  background(200, 255, 255);
  drawMountains();
}

void drawMountains() {
  // Draw mountain peaks
  fill(150);
  triangle(100, 600, 400, 200, 700, 600);
  triangle(300, 600, 600, 200, 900, 600);
  
  // Draw mountain slopes
  fill(100);
  quad(100, 600, 400, 200, 500, 200, 300, 600);
  quad(300, 600, 600, 200, 700, 200, 500, 600);
  
  // Draw mountain bases
  fill(50);
  quad(100, 600, 300, 600, 300, 400, 100, 400);
  quad(500, 600, 700, 600, 700, 400, 500, 400);
}
