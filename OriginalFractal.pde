////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void setup()
{
	size(600, 600);
}


public void draw()
{
	background(0);
	fractal(300, 300, 200, 5);
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void action()
{
	if (mousePressed == true)
	{
		
	}
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void fractal(int x, int y, int siz, int strok) 
{
	noStroke();

	//bg
	fill(0);
	ellipse(x, y, siz*1.5, siz*1.5);

	//main
	fill(255);
	ellipse(x, y, siz, siz);
	//ellipse(x, y + siz/2, siz/4, siz/4);
	//ellipse(x + siz/4, y + siz/2, siz/4, siz/4);	
	//ellipse(x - siz/4, y + siz/2, siz/4, siz/4);

	//detail
	//stroke(0);
	//strokeWeight(strok);
	//line(x - siz/4, y, x - siz/8, y + siz/4);
	//line(x - siz/4, y + siz/4, x - siz/8, y);
	//line(x + siz/4, y, x + siz/8, y + siz/4);
	//line(x + siz/4, y + siz/4, x + siz/8, y);

	//recursion
	if (siz > 10)
	{
		fractal(x + siz, y, siz/2, strok - 1);
		fractal(x , y + siz, siz/2, strok - 1);
		fractal(x - siz , y, siz/2, strok - 1);
		fractal(x , y - siz, siz/2, strok - 1);
		fractal(x + siz, y + siz, siz/2, strok - 1);
		fractal(x + siz, y - siz, siz/2, strok - 1);
		fractal(x - siz, y + siz, siz/2, strok - 1);
		fractal(x - siz, y - siz, siz/2, strok - 1);
	}
}
