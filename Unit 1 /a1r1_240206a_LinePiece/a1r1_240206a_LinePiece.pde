/*
Composition with Double Lines and Yellow (unfinished)
 Piet Mondrian (Dutch, 1872–1944)
 1934
 https://www.metmuseum.org/art/collection/search/665942
 */


void setup() {
  size(700, 700);
}

void draw() {
  background(255);

  strokeWeight(6);

  // The most upper horizontal line is going to be drawn first
  line(0, 350, width, 350);
  // The second horizontal line will be drawn an inch bellow
  line(0, 425, width, 425);
  // The third horizontal line will be drawn an 2 inches bellow
  line(325, 640, 550, 640);

  // Now the first vertical line is going to be before the halfway mark but after the 25%
  line(250, 0, 250, 900);
  // The second vertical line goes top to bottom bottom but this one closes one side of the square
  line(325, 0, 325, 900);
  // The third vertical line closes the other ide of the square
  line(550, 425, 550, 900);
  // Now, I put a square in position
  square(325, 425, 225);
  color(350, 425, 215);
  fill(#fcdb69);
}
