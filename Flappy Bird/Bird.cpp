#include "Bird.h"


// constructor create the bird
// declaration and initialization is done at same step
// to avoid not initialize reference member variable
Bird::Bird(sf::RenderWindow& win) : birdWin(win)
{
	// load the image of the bird and its texture
	tex.loadFromFile("Resource Files/bird.png"); // dimension: 60x45
	spr.setTexture(tex);

	// set the center origin of the bird
	spr.setOrigin(30.f, 22.f);
	// set position of the bird on the window
	spr.setPosition(x, y);
}
// default movement when no key is pressed
void Bird::flap() 
{
	// should push the bird up 4 units
	g = -4;
}

// "flap" movement when spacebar is pressed
void Bird::fall() 
{
	g += 0.1; // fall
	// change the height of the bird
	y += g;
	// change the angle of the bird (give it some weight!)
	if (g < 0)
		angle = -25;
	else
		angle = 0;
}

void Bird::maxHeight() 
{
	// if the top of the bird hits the roof, the bird dies
	if (spr.getPosition().y <= 22)
		dead = 1;
}

void Bird::minHeight() 
{
	// if the bottom of the bird hits the floor, the bird dies
	if (spr.getPosition().y >= 778)
		dead = 1;
}
// restart game 
void Bird::restart() 
{
	g = 0;
	y = 400;
	score = 0;
	dead = 0;
}

// draw bird's frame
void Bird::draw()
{
	spr.setPosition(x, y);
	spr.setRotation(angle);
	birdWin.draw(spr);
}