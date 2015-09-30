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

public void setup()
{
	size (600,600);
	noLoop();
	background(225);
	
}
public void draw()
{

	dice = new Dot(0, 0);


	dice.show();
	
}
public void mousePressed()
{
	
	redraw();
}

class Dot//models one single dice cube
{	
		int myX, myY,rollNum;

	Dot (int x, int y){
		myX = x;
		myY = y;
	

		roll();
	}

	public void roll()
	{	
		int rollNum =(int) (Math.random()*6)+1;
	}
//myX,my=250

		public void show()
	{

		fill (255);
		rect (myX,myY,75,75,10);


		if (rollNum==1){

			fill(100,100,100);
			ellipse (myX+33, myY+33, 15, 15); }

		if (rollNum==2){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15); }
		
		 if (rollNum==3) {
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+38, myY+38, 15, 15);
			ellipse (myX+61, myY+61, 15, 15); }

		if (rollNum==4){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);	}

		if (rollNum==5){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);		
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			ellipse (myX+38, myY+38, 15, 15); }	
		
		if (rollNum==6){
			fill(0,0,0);
			ellipse (myX+15, myY+15, 15, 15);
			ellipse (myX+15, myY+61, 15, 15);
			ellipse (myX+61, myY+15, 15, 15);
			ellipse (myX+61, myY+61, 15, 15);
			
			ellipse (myX+15, myY+38, 15, 15);
			ellipse (myX+61, myY+38, 15, 15); }

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
