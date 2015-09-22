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




public void setup()
{
	size (500,500);
	noLoop();
}
public void draw()
{
	background(225);
	fill(225,225,225);
	rect(250,250,80,80,10);

	//ellipse (x, y, 5, 5);
	//int sum = 0
	//for (int i = 0; i <100;i++)

	//your code here
}
public void mousePressed()
{
	
	redraw();
}
class Dot //models one single dice cube
{	int myX, myY;
	//variable declarations here
	
		Dot() //constructors
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
				}
}
				
	{	
	//	myX = (int)
		//variable initializations here
	}
		

		public void roll()
	{	

		//your code here
	}
		public void show()
	{
		
		//your code here
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
