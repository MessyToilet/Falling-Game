//clouds color 249,147,147 light pantone red

class cloud{
//cloud positions
int cloud1X = 0;
int cloud1Y = 0;
int cloud2X = -30;
int cloud2Y = 5;
int cloud3X = 20;
int cloud3Y = 10;// variables i can switch on the fly
	
	int x; // state x and y before i use them
	int y;//undefined vars are 0
	float diameter;
	int size = random(1,3);               
	
	cloud() {//constructor initiates the starting x,y position relative to the cloud's build (the three squares i don't know how to word it)
		y = random(height,1740);
		x = random(50,650); // random x y position, x is to spread them out length wise adn y is to pre place them underneath so they roll up at different times. this causes lag thats why we use P2D
	}

	void ascend() {// function to move clouds up
		y -= 20;//speed of the clouds rising
	}
		
	void top() {//function of what happens when the cloud reachs the top
		if (y < -diameter/2) {// checks if the clouds reach the top, half way through the clouds total hieght to make it dissapper smoother
			y = random(870,1740);
			x = random(50,650); // theses two repeat whats happening in the constructor  
		}	
	}

	void display() {// function that will draw the cloud in the main page
		fill(249,147,147); // color of the clouds (light pantone type color)
		rectMode(CENTER);
		rect(cloud1X + x,cloud1Y + y,50,50);
		rect(cloud3X + x,cloud3Y + y,40,40);
		rect(cloud2X + x,cloud2Y + y,30,30);// location of each cloud puff (the squares) to relation of each other, and size
		
	}

}// close class cloud
	
/*
create class cloud
state int variables (theses variables are the location of the squares that make the cloud, having them up there made it easier to sawp out values)
state the x and y value
state diameter (this allows us to check when the cloud makes it half way through, even tho its not a circle it still works)
create cloud constructor (picks random x cord, this is to spread out the clouds. picks random y cordiante thats doubled the playing size, this is to make them come up at different times
create top method
this changes the y value by - 20, this determines the speed the clouds rise at
create top method
detects if the cloud passed the top with half of the clouds body
if so pick random x and y again
display method
change color to light pantone red
create rectangles and use the values above to move the cloud squares to the right spots
close off class
*/