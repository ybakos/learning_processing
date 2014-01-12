// Learning Processing Example 23-4. Simple particle system.

import java.awt.Rectangle;

ArrayList<Particle> particles;
Rectangle blackHole;

void setup() {
  size(400, 400);
  blackHole = new Rectangle(50, 150, 100, 25);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(220);
  stroke(33);
  fill(180);
  rect(blackHole.x, blackHole.y, blackHole.width, blackHole.height);
  particles.add(new Particle(mouseX, mouseY));
  for (int i = particles.size() - 1; i >= 0; --i) {
    Particle p = particles.get(i);
    p.run();
    p.gravity();
    p.display();
    if (blackHole.contains(p.x, p.y)) p.stop();
    if (p.finished()) particles.remove(i);
  }
}