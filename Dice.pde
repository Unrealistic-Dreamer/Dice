


void setup()
{
	size (500,500);
	noLoop();
}
void draw()
{
	background(225);
	fill(225,225,225);
	rect(250,250,80,80,10);
	//dot
	//fill(0,0,0);
	//ellipse (265, 265, 15, 15);

//(x+23) for shifting
	//your code here
}
void mousePressed()
{
	
	redraw();
}
class Dot//models one single dice cube
{	int myX, myY;
	//variable declarations here
	
		Dot1() //constructors
				{
					fill(0,0,0);
					ellipse (288, 288, 15, 15);
				}
		Dot2()
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
					ellipse (311, 311, 15, 15);
				}
		Dot3()
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
					ellipse (288, 288, 15, 15);
					ellipse (311, 311, 15, 15);
				}
		Dot4()
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
					ellipse (265, 311, 15, 15);
					ellipse (311, 265, 15, 15);
					ellipse (311, 311, 15, 15);
				}

				}
		Dot5()
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
					ellipse (265, 311, 15, 15);
					ellipse (311, 265, 15, 15);
					ellipse (311, 311, 15, 15);
					ellipse (288, 288, 15, 15)
				}	
		Dot6()
				{
					fill(0,0,0);
					ellipse (265, 265, 15, 15);
					ellipse (265, 311, 15, 15);
					ellipse (311, 265, 15, 15);
					ellipse (311, 311, 15, 15);
					ellipse (265, 288, 15, 15);
					ellipse (311, 288, 15, 15);
				}
}
				
	{	
	//	myX = (int)
		//variable initializations here
	}
		

		void roll()
	{	((int)(Math.random()*5)+1;


		//your code here
	}
		void show()
	{
		//your code here

	}
			