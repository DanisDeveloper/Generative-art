class Agent {
  float x = random(img.width);
  float y = random(img.height);
  float px = x;
  float py = y;
  //float speedX = random(-5,5);
  //float speedY = random(-5,5);
  float speedX = 5*((int)random(0,2) == 0 ? 1 : -1);
  float speedY = 7*((int)random(0,2) == 0 ? 1 : -1);

  void step() {
    px = x;
    py = y;
    x += speedX;
    y += speedY;
    if (x < 0 || x > width) {
      speedX *= -1;
    }
    if (y < 0 || y > height) {
      speedY *= -1;
    }
    //if (random(0, 1) < 0.01) {
    //  speedX = random(-5,5);
    //  speedY = random(-5,5);
    //}
  }
  void display() {
    stroke(0);
    line(px, py, x, y);
  }
}
