#include "Pipe.h"

unsigned Pipe::newX = 600;

Pipe::Pipe()
{	
	// create upward pipe and downward pipe
	tex1.loadFromFile("Resource Files/TopPipe.png");
	tex2.loadFromFile("Resource Files/BottomPipe.png");
	pipeTop.setTexture(tex1);
	pipeBot.setTexture(tex2);
	// x at the left, y changes randomly
	// center of pipe
	pipeTop.setOrigin(0, y);
	//pipeBot.setOrigin(0, y);
	
	// same x, top-y is at its origin
	pipeTop.setPosition(x, 0); // only change with the origin 
	pipeBot.setPosition(x, 1000-y);
	// space between 2 pipes: 1000 - 2y (350 <= y <= 400)
}

void Pipe::move() 
{
	// pipes move to left of the screen
	x -= 1;
}

void Pipe::restart()
{
	x = newX; 
	y = rand() % 400 + 350; 
	newX += 400; 
	if (x == 1400)
		newX = 600;
}

void Pipe::draw(sf::RenderWindow& win) 
{
	// change the height of pipes
	pipeTop.setOrigin(0, y);
	pipeTop.setPosition(x, 0);
	pipeBot.setPosition(x, 1000-y);
	// print out pipe
	win.draw(pipeTop);
	win.draw(pipeBot);
}


