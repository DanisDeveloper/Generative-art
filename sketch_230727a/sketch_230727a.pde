PImage img;


float x;
float y;
float px;
float py;
float speedScalar = 0.005;
float speedAngle = 0.07;
float scalar = 0.0;
float angle = 0.0;
void setup() {
  size(1280, 817);
  fill(0);
  stroke(0);
  smooth();
  frameRate(1000);
  img = loadImage("girl1.jpg");
  //background(255);
  px = width/2;
  py = height/2;
  x = px + cos(angle)*scalar;
  y = py + sin(angle)*scalar;
}
void draw() {
  surface.setSize(img.width, img.height);
  img.loadPixels();

  try {
    //float r = map(brightness(img.pixels[(int)y*width+(int)x]), 0, 255, 4, 0);
    float alpha = map(brightness(img.pixels[(int)y*width+(int)x]), 0, 255, 1, 0);

    strokeWeight(alpha);
    line(px, py, x, y);
  }
  catch(Exception ex) {
  }
  px = x;
  py = y;
  x = x + cos(angle)*scalar;
  y = y + sin(angle)*scalar;
  scalar += speedScalar;
  angle += speedAngle;
}