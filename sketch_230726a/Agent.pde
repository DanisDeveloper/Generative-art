class Agent {
  float x = random(0, img.width);
  float y = random(0, img.height);
  float r = random(0.1, 2);
  color fill = color((int)random(0, 200), (int)random(0, 200), (int)random(3, 200));
  float speedX = random(-5, 5);
  float speedY = random(-5, 5);

  void step() {
    x += speedX;
    y += speedY;
    if (x < r || x > width - r) {
      speedX *= -1;
      x += speedX;
    }
    if (y < r || y > height - r) {
      speedY *= -1;
      y += speedY;
    }
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
    //float angle = random(-5, 5);
    //float tx = speedX;
    //float ty = speedY;
    //angle = radians(angle);
    //speedX = tx*cos(angle) - ty * sin(angle);
    //speedY = tx*sin(angle) + ty * cos(angle);
  }

  void display() {
    fill(fill);
    circle(x, y, r*2);
  }
}
