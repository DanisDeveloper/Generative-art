PImage img;
Agent[] agents = new Agent[300];
String filename = "girl1.jpg";
void setup() {
  size(600, 600);
  frameRate(1000);
  smooth(8);
  img = loadImage(filename);
  for (int i=0; i<agents.length; ++i) {
    agents[i] = new Agent();
  }
}


void draw() {
  //println(frameRate);
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
    agents[i].step();
    agents[i].display();
  }




  if (keyPressed) {
    save("data/result_" + filename);
  }
}
