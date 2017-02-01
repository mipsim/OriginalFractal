////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void setup()
{
	size(600, 600);
}


public void draw()
{
	background(200, 215,255);
	fractal(300, 300, 150, 0, 0, (int)(Math.random()*400));
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void action()
{
	
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void fractal(int x, int y, int siz, int red, int green, int blue) 
{
	noStroke();

	//bg
	fill(0, 0, (int)(Math.random()*50));
	ellipse(x, y, siz*1.5, siz*1.5);

	//main
	fill((int)(Math.random()*255+200), (int)(Math.random()*255+100), 0);
	ellipse(x, y, siz, siz);
	fill(red, green, blue);
	ellipse(x, y, siz/2, siz/2);

	//recursion
	if (siz > 10)
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
