boolean Menu;
boolean gameOver = false;
int mode;



void theMenu()
{
  background(255);
  textSize(40);
  fill(0);
  text("Beat the Lie Detector", width/8 , 100);
  menuButtons();
}

void menuButtons()
{
  if(keyPressed)
  {
    Menu = false;
  }
 
  for(int i = 0; i < 2; i++)
  {

    fill(255);
    int x = textRead.button();
    if((x == i && (mouseY > height - height/4 && mouseY < (height - height/4) + 50)))
    {
     fill(255, 0, 0);
     if(mousePressed)
     {
       Menu = false;
       mode = i;
       mousePressed = false;
     }
    }
    rect(0 + (250 * i), height - height/4, 250,50);
    fill(0);
    textSize(25);
  
    text((i + 1) + " Player Mode", 50 + (250*i), height - height/6);
    
  }
}



void gameOverSplash()
{
  background(0);
  fill(255,0,0);
  textSize(40);
  text("Game Over", width/4, 60);
  
}

