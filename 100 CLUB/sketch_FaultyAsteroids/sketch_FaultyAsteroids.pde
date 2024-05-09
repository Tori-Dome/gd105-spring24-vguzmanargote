float shipX, shipY, shipAngle;
boolean thrusting = false;
float shipSpeedX, shipSpeedY;
float bulletX, bulletY;
boolean bulletActive = false;
float bulletSpeedX, bulletSpeedY;
float asteroidX, asteroidY;
float asteroidSpeedX, asteroidSpeedY;
float asteroidAngle, asteroidRotation;
boolean gameover = false;
int score = 0;

void setup() {
  size(400, 400);
  shipX = width/2;
  shipY = height/2;
  asteroidX = random(width);
  asteroidY = random(height);
  asteroidSpeedX = random(-1, 1);
  asteroidSpeedY = random(-1, 1);
  asteroidAngle = random(TWO_PI);
  asteroidRotation = random(-0.05, 0.05);
}

void draw() {
  background(0);
  if (!gameover) {
    updateShip();
    updateBullet();
    updateAsteroid();
    checkCollisions();
  }
  drawShip();
  if (bulletActive) drawBullet();
  drawAsteroid();
  fill(255);
  text("Score: " + score, 10, 20);
  if (gameover) {
    text("GAME OVER", width/2, height/2);
  }
}

void updateShip() {
  if (thrusting) {
    float forceX = cos(shipAngle) * 0.1;
    float forceY = sin(shipAngle) * 0.1;
    shipSpeedX += forceX;
    shipSpeedY += forceY;
  }
  shipX += shipSpeedX;
  shipY += shipSpeedY;
  if (shipX > width) shipX = 0;
  if (shipX < 0) shipX = width;
  if (shipY > height) shipY = 0;
  if (shipY < 0) shipY = height;
}

void updateBullet() {
  if (bulletActive) {
    bulletX += bulletSpeedX;
    bulletY += bulletSpeedY;
    if (bulletX < 0 || bulletX > width || bulletY < 0 || bulletY > height) {
      bulletActive = false;
    }
  }
}

void updateAsteroid() {
  asteroidX += asteroidSpeedX;
  asteroidY += asteroidSpeedY;
  asteroidAngle += asteroidRotation;
  if (asteroidX < 0) asteroidX = width;
  if (asteroidX > width) asteroidX = 0;
  if (asteroidY < 0) asteroidY = height;
  if (asteroidY > height) asteroidY = 0;
}

void drawShip() {
  pushMatrix();
  translate(shipX, shipY);
  rotate(shipAngle);
  fill(255);
  triangle(0, -10, -5, 5, 5, 5);
  if (thrusting) {
    fill(255, 0, 0);
    triangle(0, 6, -2, 14, 2, 14);
  }
  popMatrix();
}

void drawBullet() {
  ellipse(bulletX, bulletY, 5, 5);
}

void drawAsteroid() {
  pushMatrix();
  translate(asteroidX, asteroidY);
  rotate(asteroidAngle);
  noFill();
  stroke(255);
  ellipse(0, 0, 20, 20);
  popMatrix();
}

void keyPressed() {
  if (key == ' ') {
    bulletActive = true;
    bulletX = shipX;
    bulletY = shipY;
    bulletSpeedX = cos(shipAngle) * 5;
    bulletSpeedY = sin(shipAngle) * 5;
  }
  if (keyCode == UP) {
    thrusting = true;
  }
  if (keyCode == LEFT) {
    shipAngle -= 0.1;
  }
  if (keyCode == RIGHT) {
    shipAngle += 0.1;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    thrusting = false;
  }
}

void checkCollisions() {
  float d = dist(bulletX, bulletY, asteroidX, asteroidY);
  if (d < 20) {
    score++;
    asteroidX = random(width);
    asteroidY = random(height);
    asteroidSpeedX = random(-1, 1);
    asteroidSpeedY = random(-1, 1);
    asteroidAngle = random(TWO_PI);
    asteroidRotation = random(-0.05, 0.05);
  }
}
