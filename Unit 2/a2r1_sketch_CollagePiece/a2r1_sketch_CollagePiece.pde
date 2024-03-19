/*

 Collage
 
 */

PImage backdrop;
PImage house;
PImage wednesday;
PImage tara;

void setup() {
  size(700, 700);
  
  house = loadImage("Tara's_House.jpeg");
  backdrop = loadImage("Addams_house.jpg");
  tara = loadImage("TaraCarpenter_removebg.png");
  wednesday = loadImage("Wednesday_removebg.png");
  
}

void draw() {
  
  image(house, 350, 0, 350, 700);
  
  image(backdrop, 0, 0, 350, 700);
  
  image(tara, 470, 300, 230, 400);
  
  image(wednesday, -10, 300, 230, 400);
  
}
