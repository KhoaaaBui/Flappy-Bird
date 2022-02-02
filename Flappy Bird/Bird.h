#ifndef BIRD_H
#define BIRD_H
#include <SFML/Graphics.hpp>
class Bird
{
public:
	sf::Texture tex;
	sf::Sprite spr;
	sf::RenderWindow& birdWin;
	// address of the main window
	// gravity
	float g = 0;
	bool dead = 0;
	int angle = 0;
	int score = 0;
	// set position of the bird
	float x = 250, y = 400;

	Bird(sf::RenderWindow&);
	void maxHeight();
	void flap();
	void restart();
	void draw();
	void fall();
	void minHeight();
};

#endif