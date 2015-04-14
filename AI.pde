class AI
{
  boolean isPlayerLying;
  boolean gameWon;
  boolean currentlyLying;
  boolean questionAnswered;
  int noQuestions;
  int currentQuestion;
  float lyingProbability;
  
  AI()
  {
     isPlayerLying = false;
     currentlyLying = false;
     gameWon = false;
     lyingProbability = 0;
     currentQuestion = 0;
     noQuestions = 4;
  }
  
  void update()
  {
    if(lyingProbability >=100)
    {
      gameWon = false;
      gameOver();
    }
    else if(lyingProbability <=100 && currentQuestion >= noQuestions)
    {
      gameWon = true;
      gameOver();
    }
    
    if(questionAnswered = false)
    {
      display(currentQuestion);
      readin(lieDetector);
      if(currentlyLying)
      {
        lyingProbability += 25;
        currentQuestion++;
      }
      else
      {
        currentQuestion++;
      }
    }
      
  }
  
  void gameOver()
  {
    if(gameWon)
    {
      //insert winning screen
    }
    else
    {
      //insert losing screen
    }
  }
  
  void display()
  {
    //insert question display here?
  }
  
}

