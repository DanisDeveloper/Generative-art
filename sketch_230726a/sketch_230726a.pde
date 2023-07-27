PImage img;
Agent[] agents = new Agent[500];
PGraphics pg;
PImage mask;

void setup() {
  size(1280, 800);
  noStroke();
  frameRate(30);
  img = loadImage("girl1.jpg");
  for (int i=0; i<agents.length; ++i) {
    agents[i] = new Agent();
  }
  //image(img, 0, 0);
  //img.loadPixels();
  //loadPixels();
  //for (int i=0; i<img.height; ++i) {
  //  for (int j=0; j<img.width; ++j) {
  //    int loc = i*width + j;
  //    float b = brightness(img.pixels[loc]);
  //    if (b > 90) {
  //      pixels[loc] = color(255);
  //    } else {
  //      pixels[loc] = color(0);
  //    }
  //  }
  //}
  //updatePixels();
  //save("data/mask.jpg");
  //mask = loadImage("mask.jpg");

  //pg = createGraphics(width, height);
  background(255);
}

void draw() {
  surface.setSize(img.width, img.height);
  //background(255);
  img.loadPixels();
  for (int i=0; i<agents.length; ++i) {
    agents[i].r = map(brightness(img.pixels[(int)agents[i].y*width+(int)agents[i].x]), 0, 255, 1, 0);
    agents[i].display();
    agents[i].step();
  }
  //pg.beginDraw();
  //pg.mask(mask);
  ////pg.mask(img);
  //pg.endDraw();
  //image(pg, 0, 0);
    if (keyPressed) {
    save("data/result.jpg");
  }
}
