#ifndef PIPE_H
#define PIPE_H
#include <SFML/Graphics.hpp>
class Pipe
{
public:
	sf::Texture tex1, tex2;
	sf::Sprite pipeTop, pipeBot;
	static unsigned newX;
	int x = 600;
	// random height of the pipes
	int y = rand() % 400 + 350;

	Pipe();
	void move();
	void restart();
	void draw(sf::RenderWindow &);
	
};

#endif
