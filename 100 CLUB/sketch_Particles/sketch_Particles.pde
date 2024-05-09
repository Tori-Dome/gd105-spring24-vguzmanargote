class Particle {
  PVector position;
  PVector velocity;
  PVector best;
  float fitness;

  Particle(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    best = position.copy();
    fitness = fitnessFunction(x, y);
  }

  void update(PVector globalBest) {
    PVector personalBest = best.copy();
    if (fitness < fitnessFunction(best.x, best.y)) {
      personalBest = position.copy();
    }
    
    PVector globalDir = PVector.sub(globalBest, position);
    PVector personalDir = PVector.sub(personalBest, position);

    velocity.add(globalDir.mult(random(0, 1)));
    velocity.add(personalDir.mult(random(0, 1)));
    position.add(velocity);
    
    if (position.x < 0 || position.x > width || position.y < 0 || position.y > height) {
      position = new PVector(random(width), random(height));
      velocity = new PVector(random(-1, 1), random(-1, 1));
    }

    float newFitness = fitnessFunction(position.x, position.y);
    if (newFitness < fitness) {
      best = position.copy();
      fitness = newFitness;
    }
  }

  void display() {
    noStroke();
    fill(255, 50);
    ellipse(position.x, position.y, 8, 8);
  }
}

ArrayList<Particle> particles = new ArrayList<Particle>();
PVector globalBest;
int numParticles = 50;

void setup() {
  size(800, 600);
  globalBest = new PVector(width/2, height/2);

  for (int i = 0; i < numParticles; i++) {
    particles.add(new Particle(random(width), random(height)));
  }
}

void draw() {
  background(0);

  for (Particle p : particles) {
    p.update(globalBest);
    p.display();
  }

  for (Particle p : particles) {
    if (fitnessFunction(p.position.x, p.position.y) < fitnessFunction(globalBest.x, globalBest.y)) {
      globalBest = p.position.copy();
    }
  }

  stroke(255, 0, 0);
  fill(255, 0, 0, 50);
  ellipse(globalBest.x, globalBest.y, 20, 20);
}

float fitnessFunction(float x, float y) {
  return (sin(x/100) + cos(y/100)) * 100;
}
