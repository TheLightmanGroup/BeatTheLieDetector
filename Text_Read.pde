class UI
{
  String question;
  String[] lines;
  int current;
  int dountdown;
  
  
  UI(int start)
  {
    this.current = start;
  }
  
  
  void read()
  {
    lines = loadStrings("lie.txt");
  }
  
  void display()
  {
    fill(0);
    println(lines);
    textSize(30);
    textAlign(CENTER);
    if(current < lines.length)
    {
      String q = lines[current];
      String a = lines[(current + 1)];
      String[] ans = split(a, '\t');
      text(q, width/2, height - height/3);
    displayAns(ans);
    }
    
  }
  
  void displayAns(String[] ans)
  {
    fill(255);
    for(int i = 0; i < ans.length; i++)
    {
      fill(255);
      rect(0 + (250 * i), height - height/4, 250,50);
      fill(0);
      text(ans[i], 50 + (250*i), height - height/6);
    }
  }
  
  
 /* 
  void checkAns()
  {
    if(lie)
    {
      theta+= 10;
    }
    else
    {
      
    }
    
    if(theta > threshold)
    {
      gameOver();
    }
    */
  }
  
  
  
  


