Star[] stars = new Star[200];

void setup() {
  size(400, 400);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (Star star : stars) {
    star.update();
    star.show();
  }
}
class Star {
  float x;
  float y;
  float z;
  float pz;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }

  void update() {
    z = z - 10;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }

  void show() {
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    float r = map(z, 0, width, 16, 0);
    fill(255);
    noStroke();
    ellipse(sx, sy, r, r);

    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    pz = z;

    stroke(255);
    line(px, py, sx, sy);
  }
}
