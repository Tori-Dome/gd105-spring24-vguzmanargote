float angle = 0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle * 0.3);
  rotateZ(angle * 1.2);
  fill(0, 150, 255);
  box(200);
  angle += 0.01;
}
