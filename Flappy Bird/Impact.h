#ifndef IMPACT_H
#define IMPACT_H
#include "Pipe.h"
#include "Bird.h"
class Impact
{
public:
	Bird& bird;
	Pipe &set1;
	Pipe &set2;
	Pipe &set3; // 3 sets of pipes
	int closestX, closestY;
	// constructor (insert bird and pipe sets to evaluate impact)
	Impact(Bird& BIRD, Pipe& SET1, Pipe& SET2, Pipe& SET3);
	void hit();
	void run();
};

#endif