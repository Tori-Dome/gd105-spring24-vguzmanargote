/*
THE RELATIVITY OF COLOR
 osef Albers (German, 1888–1976)
 
 https://www.themarginalian.org/2013/08/16/interaction-of-color-josef-albers-50th-anniversary/
 */


void setup() {
  size(800, 400);
}

void draw() {
  background(255);

  // the first rectangle needs to be placed and colored.
  strokeWeight(0);
  fill(#e8812d);
  rect(-2, 0, 228, 407);

  //the second rectangle is the light blue filled one and, it needs to be placed and colored.
  strokeWeight(0);
  fill(#4b99d0);
  rect(538, -3, 273, 410);

  //the third rectangle is the dark blue filled one and, it needs to be placed and colored.
  strokeWeight(0);
  fill(#28225a);
  rect(382, -1, 156, 404);

  //the forth rectangle is a neon yellow filled one and, it needs to be placed and colored.
  strokeWeight(0);
  fill(#fdfb50);
  rect(226, -1, 156, 403);

  // Now I'm going to do the dark orange/brown square
  strokeWeight(0);
  fill(#8e5613);
  square(140, 158, 86);

  // last, but not least, I'm going to do the lightish orange/brown square
  strokeWeight(0);
  fill(#965500);
  square(538, 158, 86);
}
