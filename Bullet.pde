class Bullet
{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float damage;
  PImage bullet;
  Bullet(float xx, float yy, float xv, float yv, float dd)
  {
    x=xx+31;
    y=yy;
    ySpeed=yv;
    xSpeed=xv;
    damage=random(dd/2,dd);
    bullet=pack.get(128, 0, 2, 7);
  }
  void draw()
  {
    image(bullet, x, y);
  }
  void update()
  {
    y-=ySpeed;
    x-=xSpeed;
  }
}
