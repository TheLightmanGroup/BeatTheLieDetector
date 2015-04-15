void setup()
{
  size(500,500);
  cent = new PVector(width/2, height/2);
  rad = width;
  textRead = new UI(0);
  Menu = true;
  range = height/2 + height/10;
  currentY = height/2;
  polyDir = false;
}


//Variables needed
boolean questionAnswered = false;
ArrayList<Polygraph> polys = new ArrayList<Polygraph>();
float lieLevelMult;
boolean polyDir;
float range;
float currentY;
PVector cent;
float theta = 270;
float rad;
boolean Move = false;
boolean change = false;
int count = 0;
int threshold = 135;
int choice;
int excitement = 0;
int lying = 0;
UI textRead;

void draw()
{ 
  if(!Menu)
  {
    if(mode == 0)
    {
      int rand = (int)random(-2,2);
      excitement += rand;
      if(excitement<=0)
      lying = 0;
      if(excitement > 0 && excitement <=20)
      lying = 1;
       if(excitement > 20 && excitement <=40)
      lying = 2;
      
      stroke(0,255,0);
      text("excitement: " + excitement + "\nlying: " + lying, width/2, height/2);
      mode0();
      if(Move)
      {
        move();
        count++;
      }
    }
    else if(mode == 1)
    {
      int randrange = (int)random(-10,10);
      background(255);
      println(range);
      if(currentY >= height/2 + dist(width/2,range,width/2,height/2))
      {
        polyDir = false;
      }
      else if(currentY <= height/2 - dist(width/2,range,width/2,height/2))
      {
        polyDir = true;
      }
      if(polyDir)
      {
        currentY+= 2;
      }
      else
      {
        currentY-= 2;
      }
      if(questionAnswered = true)
      {
        if(lying==2)
        {
          Move = true;
        }
        
       if(theta < threshold)
        {
          textRead.gameOver();
        }
      }
      Polygraph p = new Polygraph();
      p.y = currentY;
      polys.add(p);
      for(int i = 0; i < polys.size(); i++)
      {
        polys.get(i).update();
        polys.get(i).display();
        if(polys.get(i).x > width || polys.get(i).y > height || polys.get(i).x < 0 || polys.get(i).y < 0)
        {
          polys.remove(i);
        }
      }
      range += randrange;
    }
  }
  else
  {
    if(gameOver)
    {
      gameOverSplash();
    }
    else
    {
      theMenu();
    }
  }
}

void advance()
{
  textRead.current+= 2;
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
    if(change)
  {
    background(255);
    float x = cent.x * rad * sin(radians(theta));
    float y = cent.y * rad * cos(radians(theta));
    redLines();
    line(width/2, height/2, x, y);
    textRead.read();
    textRead.display();
  }
  else
  {
    info();
  }
}



void move()
{
  theta -= .1;
  if(count == 50)
  {
    count = 0;
    Move = false;
  }
}

void info()
{
  background(255);
  String[] lines = loadStrings("info.txt");
  for(int i =0; i < lines.length; i++)
  {
      String q = lines[i];
      println(q);
      text(q, width/5, 60 + 30 * (i));
  }
}

void keyPressed()
{
  change = true;
}

