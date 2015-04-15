class Polygraph
{
  float x, y;
  boolean polyAlive;
  
  Polygraph()
  {
    x = width / 2;
    polyAlive = true;
  }
  
  void update()
  {
    x--;
  }
  void display()
  {
    fill(0);
    stroke(0);
    point(x,y);
  }
}
