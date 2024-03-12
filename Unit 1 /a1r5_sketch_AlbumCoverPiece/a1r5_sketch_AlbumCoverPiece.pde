/*
Neffex Album Symbol

*/

void setup() {
  size(680, 680);
 
}

void draw() {
   background(255);
  
  //the first triangle needs to be placed in the middle, connected to the middle of the othe triangles.
  strokeWeight(30);
  fill(#f8f8f8);
  triangle(330,590,555,190,110,190);
  
  //the second triangle needs to be placed in the upper right corner.
  strokeWeight(30);
  fill(#f8f8f8);
  triangle(510,60,665,300,360,300);
  
  //the third and last triangle needs to be placed in the upper left corner.
  strokeWeight(30);
  fill(#f8f8f8);
  triangle(155,60,0,300,310,300);
  
}
