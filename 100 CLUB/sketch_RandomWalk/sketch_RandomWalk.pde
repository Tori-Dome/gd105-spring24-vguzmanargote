float x = 400;
float y = 300;

void setup() {
  size(800, 600);
  background(155);
}

void draw() {
  stroke(6);
  point(x, y);
  int choice = int(random(4));
  if (choice == 0) {
    x += 1;
  } else if (choice == 1) {
    x -= 1;
  } else if (choice == 2) {
    y += 1;
  } else {
    y -= 1;
  }
  x = constrain(x, 0, width-1);
  y = constrain(y, 0, height-1);
}
