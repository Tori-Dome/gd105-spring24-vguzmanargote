/*
  Assignment 2, Prompt 3
  The Mouse-Reactive Piece
  
  Make a program that animates
  elements in response to the user’s
  mouse position, and has character. 
 
*/

float xoff = 0;
float yoff = 1000;
float noiseScale = 0.02;
float sinScale = 0.1;
float cosScale = 0.1;
int seed = 1;

void setup() {
  size(800, 600);
  noiseSeed(seed);
}

void draw() {
  background(0);
  
  float sinVal = sin(frameCount * sinScale);
  float cosVal = cos(frameCount * cosScale);
  
  float x = map(sinVal, -1, 1, 0, width) + mouseX * 0.1;
  float y = map(cosVal, -1, 1, 0, height) + mouseY * 0.1;
  
  float noiseVal = noise(xoff, yoff) * 500;
  float noiseX = map(noiseVal, 0, 500, 0, width);
  float noiseY = map(noiseVal, 0, 500, 0, height);
  
  stroke(255);
  noFill();
  
  beginShape();
  for (int i = 0; i < 360; i++) {
    float rad = radians(i);
    float x1 = x + sin(rad) * noiseX;
    float y1 = y + cos(rad) * noiseY;
    vertex(x1, y1);
  }
  endShape(CLOSE);
  
  xoff += noiseScale;
  yoff += noiseScale;
}
