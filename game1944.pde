PImage pack;
float a,b;
boolean wIsDown;
boolean aIsDown;
boolean sIsDown;
boolean dIsDown;
boolean spaceIsDown;
boolean fire;
Airplane plane1;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Player p1;

void setup() {
  size(1600, 1000);
  pack=loadImage("1944pack.png");
  plane1=new Airplane();
  p1=new Player();
}

void draw()
{
  background(#002fff);
  plane1.draw();
  plane1.hitbox();
  plane1.update();
  p1.update();
  p1.draw();
  if(spaceIsDown==true) p1.fire();
}
void keyPressed()
{
  if (key=='w'||key=='W') wIsDown=true;
  if (key=='a'||key=='A') aIsDown=true;
  if (key=='s'||key=='S') sIsDown=true;
  if (key=='d'||key=='D') dIsDown=true;
  if (key==' ') spaceIsDown=true;
}
void keyReleased()
{
  if (key=='w'||key=='W') wIsDown=false;
  if (key=='a'||key=='A') aIsDown=false;
  if (key=='s'||key=='S') sIsDown=false;
  if (key=='d'||key=='D') dIsDown=false;
  if (key==' ')
}
