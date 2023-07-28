class Agent {
  float speedScalar = 0.001;
  float speedAngle = 0.002;
  float scalar = 0.1;
  float angle = 0.0;

  //float px = img.width/2;
  //float py = img.height/2;
    float px = 0;
  float py = 0;
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
