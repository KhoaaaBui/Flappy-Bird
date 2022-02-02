#include "Impact.h"
// declaration and initialization is done at same step
// to avoid not initializing reference member variable
Impact::Impact(Bird& BIRD, Pipe& SET1, Pipe& SET2, Pipe& SET3) : bird(BIRD), set1(SET1), set2(SET2), set3(SET3) {}


void Impact::hit() 
{	
	// update current closet pipe set
	int counter = (bird.score % 3) +1;
	switch (counter) {
	case 1:
		closestX = set1.x;
		closestY = set1.y;
		break;
	case 2:
		closestX = set2.x;
		closestY = set2.y;
		break;
	case 3:
		closestX = set3.x;
		closestY = set3.y;
		break;
	}
	// bird dead if it hits the pipes
	// move as close as possible
	if ((bird.x + 30 > closestX) && // front of the bird passes the left side of the pipes
		(bird.y - 22 < 800 - closestY || // top of the bird passes the top pipe
			bird.y + 22.5 > 1000 - closestY)) // bottom of the bird goes below the bottom pipe
	{
		// if the tail passes the closest pipe then the bird lives
		// the bird dies even when already passed the nearest pipe
		if (bird.x - 30 > closestX+150)
		{
			bird.dead = 0;
		}
		else
			bird.dead = 1;
	}
}

void Impact::run() 
{
	for (auto temp : { &set1, &set2, &set3 }) 
	{
		if ((temp->x) < -150) 
		{
			// create new set of pipes
			temp->x = 1000;
			temp->y = rand() % 400 + 350;
		}
		// update score
		if (temp->x == 5 && bird.dead == 0)
			bird.score++;
	}
	
}

