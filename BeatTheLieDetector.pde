void setup()
{
  size(500,500);
  cent = new PVector(width/2, height/2);
  rad = width;
  textRead = new UI(0);
  Menu = true;
}

//Variables needed
PVector cent;
float theta = 270;
float rad;
UI textRead;

void draw()
{ 
  if(!Menu)
  {
    if(mode == 0)
    {
      mode0();
    }
  }
  else
  {
    theMenu();
  }
}

void advance()
{
  theta-= 10;
  textRead.current+= 2;
  println(mouseX);
}

void redLines()
{
  for(int i = 145; i > 90; i--)
  {
    float x = cent.x * rad * sin(radians(i));
    float y = cent.y * rad * cos(radians(i));
    stroke(255, 0, 0);
    line(cent.x, cent.y, x, y);
    stroke(0);
  }
}


void mode0()
{
    background(255);
    float x = cent.x * rad * sin(radians(theta));
    float y = cent.y * rad * cos(radians(theta));
    redLines();
    line(width/2, height/2, x, y);
    textRead.read();
    textRead.display();
}
  
  
