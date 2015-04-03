package ie.dit;

import processing.core.*;


public class AI
{
	public boolean isPlayerLying;
	public boolean gameWon;
	public boolean currentlyLying;
	public boolean questionAnswered;
	public int noQuestions;
	public int currentQuestion;
	public float lyingProbability;
	
	public AI()
	{
	   isPlayerLying = false;
	   currentlyLying = false;
	   gameWon = false;
	   lyingProbability = 0;
	   currentQuestion = 0;
	   noQuestions = 4;
	}
	
	public void update()
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
	
	public void gameOver()
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
	
	public void display()
	{
		//insert question display here?
	}
	
}
