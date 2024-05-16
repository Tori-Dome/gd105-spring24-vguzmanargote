int numGrids = 20;

void setup() {
  size(800, 600);
  drawLayeredDottedGrids(numGrids);
}

void drawLayeredDottedGrids(int numGrids) {
  for (int i = 0; i < numGrids; i++) {
    float cellSize = random(10, 50);
    float spacing = random(5, 20);
    drawDottedGrid(cellSize, spacing);
  }
}

void drawDottedGrid(float cellSize, float spacing) {
  for (float x = 0; x < width; x += cellSize + spacing) {
    for (float y = 0; y < height; y += cellSize + spacing) {
      float dotX = x + random(cellSize);
      float dotY = y + random(cellSize);
      ellipse(dotX, dotY, 3, 3);
    }
  }
}
