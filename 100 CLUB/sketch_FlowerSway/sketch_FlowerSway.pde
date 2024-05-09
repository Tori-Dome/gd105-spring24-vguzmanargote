float stemLength = 200;
float stemThickness = 10;
float petalLength = 50;
float petalWidth = 20;
float petalColorR = 255;
float petalColorG = 0;
float petalColorB = 0;
float angle = 0;
float sway = 0.1;
float windSpeed = 0.05;

void setup() {
  size(400, 600);
}

void draw() {
  background(200, 220, 255);
  
  // Stem
  stroke(0, 150, 0);
  strokeWeight(stemThickness);
  line(width/2, height, width/2, height - stemLength);
  
  // Petals
  for (float a = PI/4; a < TWO_PI; a += PI/4) {
    float x = width/2 + cos(a + angle) * stemThickness * 1.5;
    float y = height - stemLength + sin(a + angle) * stemThickness * 1.5;
    fill(petalColorR, petalColorG, petalColorB);
    noStroke();
    ellipse(x, y, petalWidth, petalLength);
  }
  
  // Update sway
  angle += sway;
  
  // Wind effect
  stemLength += sin(frameCount * windSpeed) * 0.5;
  stemThickness += sin(frameCount * windSpeed) * 0.05;
  petalLength += sin(frameCount * windSpeed) * 0.1;
  petalWidth += sin(frameCount * windSpeed) * 0.05;
  petalColorG += sin(frameCount * windSpeed) * 2;
  petalColorB += sin(frameCount * windSpeed) * 2;
}
