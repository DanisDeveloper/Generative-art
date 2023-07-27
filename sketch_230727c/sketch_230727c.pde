PImage img;

Agent[] agents = new Agent[200];
void setup() {
  size(1280, 817);
  fill(0);
  stroke(0);
  smooth();
  frameRate(1000);
  img = loadImage("girl1.jpg");
  //background(255);
  for (int i=0; i<agents.length; ++i) {
    agents[i] = new Agent((TWO_PI/agents.length)*i);
  }
}
void draw() {
  surface.setSize(img.width, img.height);
  img.loadPixels();
  for (int i=0; i<agents.length; ++i) {
    try {
      //float r = map(brightness(img.pixels[(int)y*width+(int)x]), 0, 255, 4, 0);
      float alpha = map(brightness(img.pixels[(int)agents[i].y*width+(int)agents[i].x]), 0, 255, 1, 0);
      strokeWeight(alpha);
    }
    catch(Exception ex) {
    }

    line(agents[i].px, agents[i].py, agents[i].x, agents[i].y);
    agents[i].step();
  }
  if (keyPressed) {
    save("data/result.jpg");
  }
}
