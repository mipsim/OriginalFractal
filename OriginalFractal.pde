////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void setup()
{
	size(600, 600);
}


public void draw()
{
	if (mousePressed == false)
	background(150);

	if (mousePressed == true)
	background(220);

	fractal(300, 300, 200, 0, 0, 255);
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void fractal(int x, int y, int siz, int red, int green, int blue) 
{	
	stroke(0);


	//bg
	fill(0);
	ellipse(x, y, siz*1.2, siz*1.2);


	//main
	if (mousePressed == false)
	{
		fill(255, 215, 0);
		ellipse(x, y, siz, siz);

		fill(0);
		stroke(1);
		line(x, y, x + siz, y);
		line(x, y, x - siz, y);
		line(x, y, x + siz, y + siz);
		line(x, y, x - siz, y + siz);
		line(x, y, x, y + siz);
		line(x, y, x, y - siz);
		line(x, y, x + siz, y - siz);
		line(x, y, x - siz, y - siz);

		stroke(0);
		fill(255, 0, 0);
		ellipse(x, y, siz/2, siz/2);

		fill(0);
		ellipse(x, y, siz/4, siz/4);

		fill(255, 215, 0);
		ellipse(x, y, siz/16, siz/16);
	}
	

	if (mousePressed == true)
	{
		fill((int)(Math.random()*255 + 150), (int)(Math.random()*215 + 150), 0);
		ellipse(x, y, siz, siz);

		fill(0);
		stroke(1);
		line(x, y, x + siz, y);
		line(x, y, x - siz, y);
		line(x, y, x + siz, y + siz);
		line(x, y, x - siz, y + siz);
		line(x, y, x, y + siz);
		line(x, y, x, y - siz);
		line(x, y, x + siz, y - siz);
		line(x, y, x - siz, y - siz);

		fill(0, 255, 0);
		ellipse(x, y, siz/2, siz/2);

		fill(0);
		ellipse(x, y, siz/4, siz/4);

		fill((int)(Math.random()*255 + 150), (int)(Math.random()*215 + 150), 0);
		ellipse(x, y, siz/16, siz/16);
	}


	//recursion
	if (siz > 13)
	{
		fractal(x + siz, y, siz/2, red/2, green/2, blue/2);
		fractal(x, y + siz, siz/2, red/2, green/2, blue/2);
		fractal(x - siz, y, siz/2, red/2, green/2, blue/2);
		fractal(x, y - siz, siz/2, red/2, green/2, blue/2);
		fractal(x + siz, y + siz, siz/2, red/2, green/2, blue/2);
		fractal(x + siz, y - siz, siz/2, red/2, green/2, blue/2);
		fractal(x - siz, y + siz, siz/2, red/2, green/2, blue/2);
		fractal(x - siz, y - siz, siz/2, red/2, green/2, blue/2);
	}
}


//check

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////