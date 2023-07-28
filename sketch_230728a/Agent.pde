class Agent {
  float x = random(img.width);
  float y = random(img.height);
  float px = x;
  float py = y;
  float speedX = 1*((int)random(0,2) == 0 ? 1 : -1);
  float speedY = 1*((int)random(0,2) == 0 ? 1 : -1);
  
  
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
  }
  void display() {
    stroke(0);
    line(px,py,x,y);
  }
}
