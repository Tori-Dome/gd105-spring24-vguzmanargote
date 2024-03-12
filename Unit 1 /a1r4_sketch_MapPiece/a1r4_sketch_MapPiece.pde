/*
They way I see Maps in general
*/

void setup() {
 size(600,600); 
}

void draw() {
  background(75);
  
  // the first 2 rectangles make a crossroad
  stroke(#000000);
  strokeWeight(0);
  fill(#1129e2);
  rect(270,0,50,600);
  
  stroke(#000000);
  strokeWeight(0);
  fill(#c82a3d);
  rect(0,280,600,50);
  
  // next, is the square to mark the intersection
  
  stroke(#000000);
  strokeWeight(4);
  fill(#7900d6);
  square(270,280,50);
  
 // now we put different shapes to signify buildings
  
  stroke(#000000);
  strokeWeight(2);
  fill(#dc8009);
  rect(0,530,270,70);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#14a5b2);
  rect(0,460,270,70);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#742929);
  rect(0,390,270,72);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#480643);
  rect(0,330,270,60);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#d336c6);
  rect(0,150,270,130);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#0798f4);
  rect(0,0,270,150);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#0c5c08);
  rect(320,0,280,280);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#4f040a);
  rect(320,505,280,95);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#720d3f);
  rect(320,415,280,91);
  
  stroke(#000000);
  strokeWeight(2);
  fill(#5a9273);
  rect(320,329,280,87);
  
  //the final step is to place a circle where you are positioned on the map
  
  stroke(#05058d);
  strokeWeight(5);
  fill(#847a7a);
  circle(20,305,40);
  
}
