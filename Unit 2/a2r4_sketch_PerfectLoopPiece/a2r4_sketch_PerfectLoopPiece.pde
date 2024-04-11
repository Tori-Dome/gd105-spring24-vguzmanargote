/*

 Assignment 2, Prompt 4
  The Perfect Loop Piece
  
  Make a program that generates the frames for a GIF.
 */

float a;                 // Angle of rotation
float offset = PI/40.0;  // Angle offset between boxes
int num = 38;            // Number of boxes

void setup() {
  size(800, 760, P3D);
  noStroke();
}


void draw() {

  lights();

  background(0, 0, 26);
  translate(width/2, height/2);

  for (int i = 0; i < num; i++) {
    float gray = map(i, 0, num-1, 0, 255);
    pushMatrix();
    fill(gray);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    box(360);
    popMatrix();
  }

  a += 0.2;
}
