float minval = -2.5;
float maxval = 2.5;
float minvalY;
float maxvalY;
float maxIteration = 100;

void setup() {
  fullScreen();
  minvalY = map(0, 0, height, -2.5, 2.5);
  maxvalY = map(height, 0, height, -2.5, 2.5);
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float a = map(x, 0, width, minval, maxval);
      float b = map(y, 0, height, minvalY, maxvalY);
      float ca = a;
      float cb = b;
      int n = 0;
      while (n < maxIteration) {
        float aa = a * a - b * b;
        float bb = 2 * a * b;
        a = aa + ca;
        b = bb + cb;
        if (abs(a + b) > 16) {
          break;
        }
        n++;
      }
      float bright = map(n, 0, maxIteration, 0, 1);
      bright = map(sqrt(bright), 0, 1, 0, 255);
      if (n == maxIteration) {
        bright = 0;
      }
      int pix = x + y * width;
      pixels[pix] = color(bright);
    }
  }
  updatePixels();
}
