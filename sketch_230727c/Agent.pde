class Agent {
  float speedScalar = 0.0033;
  float speedAngle = 0.005;
  float scalar = 0.1;
  float angle = 0.0;

  float px = img.width/2;
  float py = img.height/2;
  float x;
  float y;

  Agent(float _angle) {
    angle = _angle;
    x = px + cos(angle)*scalar;
    y = py + sin(angle)*scalar;
  }

  void step() {
    px = x;
    py = y;
    x = px + cos(angle)*scalar;
    y = py + sin(angle)*scalar;
    scalar += speedScalar;
    angle += speedAngle;
  }
}
