#include <SFML/Graphics.hpp>
#include <string> // use to_string
#include "Bird.h"
#include "Pipe.h"
#include "Impact.h"

int main()
{	
	// create game window
	sf::RenderWindow window(sf::VideoMode(1000, 800), "Flappy Bird");
	// toggle key (only register once every press)
	window.setKeyRepeatEnabled(false);

	// CHANGE THE PARAMETER WILL CONTROL THE SPEED OF THE GAME
	window.setFramerateLimit(200);
	// create background
	sf::Texture bground; 
	bground.loadFromFile("textures/background.png"); 
	sf::Sprite background(bground);

	// create the bird
	Bird bird(window);

	// create 3 sets of pipes
	Pipe p1, p2, p3;
	p2.x = p1.x + 400;
	p3.x = p1.x + 800;

	// create impact calculation
	Impact smash(bird, p1, p2, p3);

	// add character font from file
	sf::Font font;
	font.loadFromFile("Resource Files/font.ttf");

	// score text
	sf::Text SCORE; 
	SCORE.setFont(font);
	SCORE.setPosition(480, 150);
	SCORE.setOutlineThickness(3);
	SCORE.setCharacterSize(50);

	// game over text
	sf::Text gover;
	gover.setFont(font);
	gover.setPosition(130, 200);
	gover.setCharacterSize(30);
	gover.setString("GameOver! \nPress R to restart");



	// GAME LOOP
	while (window.isOpen())
	{
		
		sf::Event event;
		window.clear();
		
		// render the game background
		window.draw(background);

		// draw pipes to window
		for (auto i : { &p1,&p2,&p3 }) i->draw(window);

		// draw bird to window
		bird.draw();

		// draw score
		SCORE.setString(std::to_string(bird.score));
		window.draw(SCORE);
		
		// if there is key pressed
		while (window.pollEvent(event)) {
			// close game window
			if (event.type == sf::Event::Closed)
				window.close();
			// press spacebar to flap
			if (event.type == sf::Event::KeyPressed)
			{
				if (event.key.code == sf::Keyboard::Space) {
					bird.flap();			
				}
			}
			// press R to restart game
			if (event.type == sf::Event::KeyPressed)
			{
				if (event.key.code == sf::Keyboard::R) //Restart the game
				{
					for (auto i : { &p1,&p2,&p3 }) i->restart();
					bird.restart(); //default
				}
			}

		}
		smash.hit();
		smash.run();
		bird.maxHeight();
		bird.minHeight();

		if (bird.dead)
		{
			// show game over prompt
			window.draw(gover);
		}
		// bird falls, pipes move forward
		else
		{
			bird.fall();
			for (auto i : { &p1,&p2,&p3 }) i->move();
		}

		window.display();
	}
	return 0;
}