class Player
{
  float x;
  float y;
  int bulletsCounter=0;
  int counter=0;
  PImage player;
  Player()
  {
    player=pack.get(0, 0, 64, 53);
    x=800;
    y=500;
  }
  void update()
  {
    if (wIsDown==true) y-=4;
    if (aIsDown==true) x-=4;
    if (sIsDown==true) y+=4;
    if (dIsDown==true) x+=4;
  }
  void draw()
  {
    image(player, x, y);
  }
  void fire()
  {
    bullets.add(new Bullet(p1.x, p1.y, 0.0, 8.0, 20.0));
    Bullet d = bullets.get(0);
    if (d.x>0&&d.y>0&&d.x<1600&&d.y<1000)
    {
      d.update();
      d.draw();
    } else
    {
      bullets.remove(0);
    }
  }
}
