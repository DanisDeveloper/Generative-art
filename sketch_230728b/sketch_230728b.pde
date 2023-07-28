int sizeText = 15;
String filename = "girl1.jpg";
PImage img;
PGraphics pg;

String alphabet = "abcdefghigklmnopqrstuvwxyz0123456789".toUpperCase();

Agent[] agents ;

void setup() {
  size(600, 600);
  textSize(sizeText);
  textAlign(CENTER);
  fill(0, 255, 0);
  frameRate(20);

  img = loadImage(filename);
  agents = new Agent[img.width/sizeText];
  for (int i=0; i<agents.length; ++i) {
    agents[i] = new Agent();
    agents[i].x = (i+1) * sizeText - sizeText/2;
    agents[i].y = random(0, img.height/sizeText) * sizeText;
  }
  pg = createGraphics(img.width, img.height);
  
  img.loadPixels();
  for(int i=0;i<img.height;++i){
    for(int j=0;j<img.width;++j){
      int loc = i*img.width + j;
      img.pixels[loc] = 255 - img.pixels[loc];
    } 
  }
  img.updatePixels();
}
void draw() {
  surface.setSize(img.width, img.height);
    pg.beginDraw();

  background(0);
  for (int i=0; i<agents.length; ++i) {
    agents[i].display();
    agents[i].step();
  }
  pg.mask(img);
  pg.endDraw();
  image(pg, 0, 0);
}
