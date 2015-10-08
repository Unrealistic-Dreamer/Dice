import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

Dot dice;
int score;

public void setup()
{
	size (600,600);
	noLoop();
	
	
	
}
public void draw()
{
	int rolltotal,rollNum;
	score = 0;
	
	rolltotal = 0;
	background(225);
	for (int i=80; i<=520; i+=80)
	{
		for (int j = 80; j<=520 ; j+=80)
		{
			dice = new Dot(i,j);
			dice.show();
		
		}
	}
	
		 fill(0);
		 textSize(25);
		 text("Total Roll:"+ score,150,50);
	
}


public void mousePressed()
{	
	redraw();
}


class Dot
{	
		int myX, myY,rollNum;

	Dot (int x, int y){
		myX = x;
		myY = y;
		x=0;
		y=0;

		roll();
	}

	public void roll()
	{	
		rollNum =(int) (Math.random()*6)+1;
	}


		public void show()
	{
		//System.out.println(rollNum);
		fill (255);
		rect (myX,myY,75,75,10);


		if (rollNum==1){

			fill(0);
			ellipse (myX+38, myY+38, 15, 15);
			score=score+rollNum;
			
			 }

		if (rollNum==2){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			score=score+2; 
	}
		
		 if (rollNum==3) {
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+38, myY+38, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			score=score+3;
			 }

		if (rollNum==4){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			score=score+4;	
		}

		if (rollNum==5){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);		
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			ellipse (myX+38, myY+38, 15, 15);
			score=score+5; 
		}	
		
		if (rollNum==6){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			
			ellipse (myX+15, myY+38, 15, 15);
			ellipse (myX+61, myY+38, 15, 15);
			score=score+6; 
		}
	}
	
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
