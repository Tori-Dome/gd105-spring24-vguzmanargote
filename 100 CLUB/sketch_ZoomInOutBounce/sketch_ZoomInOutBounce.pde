float minVal = -2.5;
float maxVal = 2.5;
float minValY = -2.5;
float maxValY = 2.5;
float zoom = 1;
float zoomSpeed = 0.05;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  scale(zoom);
  
  float maxIterations = 100;
  
  for (float x = minVal; x < maxVal; x += 0.05) {
    for (float y = minValY; y < maxValY; y += 0.05) {
      float a = map(x, 0, width, minVal, maxVal);
      float b = map(y, 0, height, minValY, maxValY);
      float ca = a;
      float cb = b;
      float n = 0;
      
      for (int i = 0; i < maxIterations; i++) {
        float aa = a * a - b * b;
        float bb = 2 * a * b;
        a = aa + ca;
        b = bb + cb;
        
        if (abs(a + b) > 16) {
          break;
        }
        
        n++;
      }
      
      float bright = map(n, 0, maxIterations, 0, 1);
      bright = map(sqrt(bright), 0, 1, 0, 255);
      
      if (n == maxIterations) {
        bright = 0;
      }
      
      fill(bright);
      noStroke();
      float posX = map(x, minVal, maxVal, -width/2, width/2);
      float posY = map(y, minValY, maxValY, -height/2, height/2);
      float posZ = -100;
      rect(posX, posY, 5, 5);
    }
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e < 0) {
    zoom += zoomSpeed;
  } else {
    zoom -= zoomSpeed;
  }
}
