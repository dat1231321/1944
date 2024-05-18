class Airplane {
  int counter;
  float x;
  float y;
  float hitPoint;
  boolean shotDown;
  PImage fighter;
  Airplane()
  {
    counter=0;
    x=800;
    y=1100;
    hitPoint=100;
    shotDown=true;
    fighter=pack.get(64, 0, 64, 53);
  }
  void draw() 
  {
    image(fighter, x, y);
  }
  void update()
  {
    if (shotDown==true)
    {
      if (counter>=300&&y>800) y-=5;
      if (y<=800)
      {
        shotDown=false;
        hitPoint=100;
      }
      counter++;
    }
    if (shotDown==false)
    {
      if (y<p1.y+300)
      {
        y+=1;
        if (x<p1.x-20) x+=2;
        if (x>p1.x+20) x-=2;
      }
      if (y>p1.y+250)
      {
        y-=2;
        if (x<p1.x-20) x+=2;
        if (x>p1.x+20) x-=2;
      }
      if (y<p1.y)
      {
        y+=1;
        if (x<p1.x-20) x-=2;
        if (x>p1.x+20) x+=2;
      }
    }
  }
  void hitbox()
  {
    for (Bullet b : bullets) {
      if (b.x>=64&&b.x<=127&&b.y>=12&&b.y<=27||b.x>=90&&b.x<=101&&b.y>=0&&b.y<=52)
      {
        hitPoint-=b.damage;
        b.y=-100;
      }
      if (hitPoint<=0&&shotDown==false)
      {
        shotDown=true;
      }
    }
  }
}
