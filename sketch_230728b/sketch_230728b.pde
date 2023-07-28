int sizeText = 15;
String filename = "girl1.jpg";
PImage img;

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
    agents[i].y = random(0,img.height/sizeText) * sizeText;
  }
}
void draw() {
  surface.setSize(img.width,img.height);
  background(0);
  for (int i=0; i<agents.length; ++i) {
    agents[i].display();
    agents[i].step();
  }
}
