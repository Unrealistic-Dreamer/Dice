Dot dice;

void setup()
{
	size (600,600);
	noLoop();
	background(225);
	
}
void draw()
{

	dice = new Dot(0, 0);

	//dice.roll();
	dice.show();
}
void mousePressed()
{
	
	redraw();
}

class Dot//models one single dice cube
{	
		int myX, myY,rollNum;

	Dot (int x, int y){
		myX = x;
		myY = y;
		x=250;
		y=250;

		roll();
	}

	void roll()
	{	
		rollNum =(int) (Math.random()*6)+1;
	}
//myX,my=250

		void show()
	{
		System.out.println(rollNum);
		fill (255);
		rect (myX,myY,75,75,10);


		if (rollNum==1){

			fill(0);
			ellipse (myX+38, myY+38, 15, 15); }

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

	//need to show total roll and make multiple dice 

	}
