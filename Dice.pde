Dot dice;

void setup()
{
	size (600,600);
	noLoop();
	background(225);
	
	
}
void draw()
{
		

	for (int i=80; i<=520; i+=80)
	{
		for (int j = 80; j<=520 ; j+=80)
		{
			dice = new Dot(i,j);
			dice.show();
		}
	}

	dice.scoreTotal();


	//dice.roll();
	
}
void mousePressed()
{
	
	redraw();
}

class Dot//models one single dice cube
{	
		int myX, myY,rollNum,score;

	Dot (int x, int y){
		myX = x;
		myY = y;
		x=0;
		y=0;

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

	void scoreTotal()
	{
		score=0;
        rollNum= score++;
		fill(0);
		textSize(25);
		text("Total Roll:"+score,150,50);
	}
}