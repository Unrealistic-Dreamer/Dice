Dot dice;

void setup()
{
	size (600,600);
	noLoop();
	dice = new Dot(0, 0);
}
void draw()
{
	background(225);
	fill(225,225,225);
	rect(250,250,80,80,10);
	dice.show();
	
}
void mousePressed()
{
	dice.roll();
	dice.show();
	redraw();
}
class Dot//models one single dice cube
{	
		int myX, myY,rollNum;

	Dot (int x, int y){
		myX = x;
		myY = y;
		x=0;
		y=0;
	}

		void roll()
	{	

		int rollNum=(int)(Math.random()*6)+1;

	}
		void show()
	{
		if (rollNum==1){

			fill(0,0,0);
			ellipse (288, 288, 15, 15); }

		if (rollNum==2){
			fill(0,0,0);
			ellipse (265, 265, 15, 15);
			ellipse (311, 311, 15, 15); }
		
		if (rollNum==3) {
			fill(0,0,0);
			ellipse (265, 265, 15, 15);
			ellipse (288, 288, 15, 15);
			ellipse (311, 311, 15, 15); }

		if (rollNum==4){
			fill(0,0,0);
			ellipse (265, 265, 15, 15);
			ellipse (265, 311, 15, 15);
			ellipse (311, 265, 15, 15);
			ellipse (311, 311, 15, 15);	}

		if (rollNum==5){
			fill(0,0,0);
			ellipse (265, 265, 15, 15);		
			ellipse (265, 311, 15, 15);
			ellipse (311, 265, 15, 15);
			ellipse (311, 311, 15, 15);
			ellipse (288, 288, 15, 15); }	
		
		if (rollNum==6){
			fill(0,0,0);
			ellipse (265, 265, 15, 15);
			ellipse (265, 311, 15, 15);
			ellipse (311, 265, 15, 15);
			ellipse (311, 311, 15, 15);
			ellipse (265, 288, 15, 15);
			ellipse (311, 288, 15, 15); }

	}

	}
