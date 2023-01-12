//to do:
/*
create spike class
create spike dessign
create spike display and asend function
create spike spawning (like the clouds)
create character spike collision
create score system, distance fallen
create diamonds for extra lives?
create dead character when the spike hits it?
create end page when you die, displaying distance falling and option to reture to the begining *SET GAME START FALSE? USE ONE BIG LOOP?*
find way to create randomlly sized clouds?
create hot air ballon? *USE IMAGE HERE?*
create collision for the walls (stop the character from going through)

*RE USE OLD CODE*
*DO PSEUDOCODE*
*GET PEOPLE TO REVEIW FOR FULL MARKS*
*/

//color 1 brown 163,96,2 color 2 194,113,0 lighter brown color 3 173,171,166 dirty silver
//size 25 by 75

class spikes {

	float x;
	int y;
	
	int spikeX;
	int spikeY;

	spikes() {
		x = random(113.75, 586.25);//spawning space for the spikes. i calculated the right area so the logs don't spawn into the wall
		y = random(900, 1170);//spikes are pre placed under playing area so they rise at what seems to be different times.
	}
	
	void show() {
		x = 350;
		y = 600;
				
		noStroke(0);
		fill(163, 96, 2);
		triangle(-37.5 + x, 12.5 + y, 37.5 + x, -12.5 + y, 37.5 + x, 12.5 + y);
		fill(194, 113, 0);
		triangle(-37.5 + x, -12.5 + y, -37.5 + x, 12.5 + y, 37.5 + x, -12.5 + y); //the spiky log is made of two right triangles
		fill(173, 171, 166); //silver
		triangle(-37.5 + x, -6.25 + y, -43.75 + x, 0 + y, -37.5 + x, 6.25 + y); //left spike
		triangle(37.5 + x, -6.25 + y, 43.75 + x, 0 + y, 37.5 + x, 6.25 + y); //right spike
		triangle(0 + x, -18.75 + y, 6.25 + x, -12.5 + y, -6.25 + x, -12.5 + y); //top middle spike
		triangle(-18.75 + x, -18.75 + y, -25 + x, -12.5 + y, -12.25 + x, -12.5 + y); //top left spike
		triangle(18.75 + x, -18.75 + y, 25 + x, -12.5 + y, 12.5 + x, -12.5 + y); //top right spike
		triangle(0 + x, 18.75 + y, 6.25 + x, 12.5 + y, -6.25 + x, 12.5 + y); //bottem middle spike
		triangle(18.75 + x, 18.75 + y, 25 + x, 12.5 + y, 12.5 + x, 12.5 + y); //bottem right spike
		triangle(-18.75 + x, 18.75 + y, -25 + x, 12.5 + y, -12.5 + x, 12.5 + y); //bottem left spike
		ellipse(0 + x, 0 + y, 12.5, 12.5); //middle middle spike
		ellipse(18.75 + x, 0 + y, 12.5, 12.5); //middle left spike
		ellipse(-18.75 + x, 0 + y, 12.5, 12.5); //middle right spike
		fill(202, 197, 197); //silver dot
		ellipse(0 + x, 0 + y, 2, 2); // middle dot
		ellipse(18.75 + x, 0 + y, 2, 2); // right dot
		ellipse(-18.75 + x, 0 + y, 2, 2); // left dot	
	}
	
	int display() {		
	//int[] display() {
		
		noStroke(0);
		fill(163, 96, 2);
		triangle(-37.5 + x, 12.5 + y, 37.5 + x, -12.5 + y, 37.5 + x, 12.5 + y);
		fill(194, 113, 0);
		triangle(-37.5 + x, -12.5 + y, -37.5 + x, 12.5 + y, 37.5 + x, -12.5 + y); //the spiky log is made of two right triangles
		fill(173, 171, 166); //silver
		triangle(-37.5 + x, -6.25 + y, -43.75 + x, 0 + y, -37.5 + x, 6.25 + y); //left spike
		triangle(37.5 + x, -6.25 + y, 43.75 + x, 0 + y, 37.5 + x, 6.25 + y); //right spike
		triangle(0 + x, -18.75 + y, 6.25 + x, -12.5 + y, -6.25 + x, -12.5 + y); //top middle spike
		triangle(-18.75 + x, -18.75 + y, -25 + x, -12.5 + y, -12.25 + x, -12.5 + y); //top left spike
		triangle(18.75 + x, -18.75 + y, 25 + x, -12.5 + y, 12.5 + x, -12.5 + y); //top right spike
		triangle(0 + x, 18.75 + y, 6.25 + x, 12.5 + y, -6.25 + x, 12.5 + y); //bottem middle spike
		triangle(18.75 + x, 18.75 + y, 25 + x, 12.5 + y, 12.5 + x, 12.5 + y); //bottem right spike
		triangle(-18.75 + x, 18.75 + y, -25 + x, 12.5 + y, -12.5 + x, 12.5 + y); //bottem left spike
		ellipse(0 + x, 0 + y, 12.5, 12.5); //middle middle spike
		ellipse(18.75 + x, 0 + y, 12.5, 12.5); //middle left spike
		ellipse(-18.75 + x, 0 + y, 12.5, 12.5); //middle right spike
		fill(202, 197, 197); //silver dot
		ellipse(0 + x, 0 + y, 2, 2); // middle dot
		ellipse(18.75 + x, 0 + y, 2, 2); // right dot
		ellipse(-18.75 + x, 0 + y, 2, 2); // left dot					
		
		//rectMode(CORNER);
		//stroke(1);
		//fill(0,0,0,30);
		//rect(-43.75 + x,-18.75 + y,87,37); //hit box for debuging
		
		//spikeX = -43.75 + x;
		spikeY = -18.75 + y;
		
		//println("spike at " + spikeX + "," + spikeY);
		
		//spikeCoordinates[0] = spikeX;
		//spikeCoordinates[1] = spikeY;
		//return spikeCordinates;
		
		return int(spikeY);
	} //display function

	void ascend() {
		y -= 1;//spikes risign speed 
	}

	void top() {//function of what happens when the spikes reachs the top
		if (y < -length/2) {// checks if the spikes reach the top, half way through the clouds total hieght to make it dissapper smoother
			x = random(113.75, 586.25); // this repeats whats happening in the constructor  
			y = random(900, 1170);
		}	
	}//top
	
	int Xpos() {
		spikeX = x - 43.75
	}
	
	
	
} //close class spikes 
/*
to do list

create class spikes
state x and y values 
state the return values of x and y (to make colision )
create consturctor
set x and y to be randomly generated like the clouds
create show method
this is to show the spike in the help menu
set x and y values to put the spike under the character (everything else is the same)
create display method
creating the actual spikes
two right triangles create rectange (two shades of brown)
create 11 spikes (took a long time to calculate where the spikes should be) three on top, middle and the bottom. plus one on each side
return the value of spikeY to detect if the player hits the same y (returning x is a problem)
ascend method
spikes rise at a speed of 1 (this is because if the spikes rise any faster theres a chance that the colision won't detect it. e.g mouse is at 37. if the spike is at 35 and rises by 5 it will skip over the mouse location, causing the game to continue.)
create top method
when the spike reaches the top of the screen half way through its body it will repeat whats been done in the constructor (random x an dy)

*/