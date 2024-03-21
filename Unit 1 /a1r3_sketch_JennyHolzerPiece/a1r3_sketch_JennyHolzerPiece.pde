/*
Truisms
  Jenny Holzer (American, 1950- ongoing)

https://www.cs.utexas.edu/~field/holzer/truisms.txt
*/

void setup() {
  size(800, 800);
  
}

void draw() {
  background(0);
  
  
  rotate(frameCount * 0.2);
  
  textSize(55);
  textAlign(CENTER, CENTER);
  text("A lot of professionals are crackpots", 400, 400);
  
  
  save("output.png");
  
  
}
