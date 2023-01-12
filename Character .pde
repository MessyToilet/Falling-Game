//Color pallet of character: 225, 237, 61 bright light yellow, 255, 224, 61 mustard yellow
//character body: L 50, W 50

class character { 
	
	float x;
	float y;//state the x and y values so we can use them (variables in classes are local)
	
	boolean holdCharacter = true; // set hold character to true as a defult later on

	int topRightX = -25;
	int topRightY = 25;
	int topLefttX = -25;
	int topLeftY = -25;
	int bottemLeftX = 25;
	int bottemLeftY = -25;
	int bottemRightX = 25;
	int bottemRightY = 25;//list of variables to use that i can change out there values

	character() {//constructor
				x = width/2;
				y = height/3;	//set the character to sit 2 thirds up and in the middle of the play area				
		}
	
	void show() {
		x = 350;
		y= 500;
		
		noStroke(0);//no stroke so there isn't an outline
			fill(255,237,61);// color yellow
			triangle(topLefttX + x,topLeftY + y,topRightX + x,topRightY + y,bottemLeftX + x,bottemLeftY +y);//right triangle
			fill(255,224,61); // characters body has two shades of yellow
			triangle(topRightX + x,topRightY +y,bottemLeftX + x,bottemLeftY + y,bottemRightX + x,bottemRightY + y);//right triangle
			rectMode(CENTER);
			fill(255,255,255); // set color to white
			rect(0 + x,0 + y,35,35);// characters eye
			fill(0,0,0);//set color to black
			rect(0 + x,5 + y,17,17);// character pupil
			fill(255,224,61);
			rect(-5 + x,30 + y,5,15);
			rect(5 + x,30 + y,5,15);// characterlegs
			fill(255,237,61);
			rect(-10 + x,40 + y,15,5);
			rect(10 + x,40 + y,15,5);//character feet
	}

	void display() {//function to be called to draw the character later					
		
			if(gameStart == false) {
				holdCharacter = true;
			}
				
			if (mousePressed == true && (mouseX > 325 && mouseX < 375 && mouseY > 410 && mouseY < 478)) {// check if the spot over the button is clicked, we do this twice because the variable isn't gloabal, kinda makes the game slow but we have P2D
						gameStart = true; // set game start to true so it unlocks the character later
						holdCharacter = false;
						x=0;
						y=0;// set x y to 0 so it will be 1/1 with the mouseX and mouseY
			}
		
		if (holdCharacter == false) {//if character hold false/ when the button is clicked unlock and move character with mouse
			//translate(mouseX,mouseY);//x and y value of the mouse is the new 0 0 
			
			
			//if (x <= 95) {
			//	x = 95;
			//}
			//else {
			//	x = 0
			//}
			translate(mouseX,mouseY);//x and y value of the mouse is the new 0 0 
			//println("mouse at " + mouseX + "," + mouseY);
			//println ("mouse pos " + mouseY);
			
			noStroke(0);//no stroke so there isn't an outline
			fill(255,237,61);// color yellow
			triangle(topLefttX + x,topLeftY + y,topRightX + x,topRightY + y,bottemLeftX + x,bottemLeftY +y);//right triangle
			fill(255,224,61); // characters body has two shades of yellow
			triangle(topRightX + x,topRightY +y,bottemLeftX + x,bottemLeftY + y,bottemRightX + x,bottemRightY + y);//right triangle
			rectMode(CENTER);
			fill(255,255,255); // set color to white
			rect(0 +x ,0 +y,35,35);// characters eye
			fill(0,0,0);//set color to black
			rect(0 + x,5 + y,17,17);// character pupil
			fill(255,224,61);
			rect(-5 + x,30 + y,5,15);
			rect(5 + x,30 +y,5,15);// characterlegs
			fill(255,237,61);
			rect(-10 + x ,40 + y,15,5);
			rect(10 + x,40 + y,15,5);//character feet
		//	rectMode(CORNER);
		//	stroke(1)
		//	fill(0,0,0,30);
		//	rect(-25 + x,-25 + y,50,70);//hitbox for advanced detection if i have time
		}
	
		else {//this locks the character until the player clicks the play button
			x = width/2;
			y = height/3;
			noStroke(0);
			fill(255,237,61);// color yellow
			triangle(topLefttX + x,topLeftY + y,topRightX + x,topRightY + y,bottemLeftX + x,bottemLeftY +y);//right triangle
			fill(255,224,61); // characters body has two shades of yellow
			triangle(topRightX + x,topRightY +y,bottemLeftX + x,bottemLeftY + y,bottemRightX + x,bottemRightY + y);//right triangle
			rectMode(CENTER);
			fill(255,255,255); // set color to white
			rect(0 + x,0 + y,35,35);// characters eye
			fill(0,0,0);//set color to black
			rect(0 + x,5 + y,17,17);// character pupil
			fill(255,224,61);
			rect(-5 + x,30 + y,5,15);
			rect(5 + x,30 + y,5,15);// characterlegs
			fill(255,237,61);
			rect(-10 + x,40 + y,15,5);
			rect(10 + x,40 + y,15,5);//character feet
						
		}//hold character true		
	}//close display	
}//close class
//these are for me when adding new functions and if statments the {} can get mixed up

/*
create character class
initialize x and y values as floats, when you don't put in a value for a variable its automaticly set to 0. (int x; x will = 0. this way you can save time from doing  this int x = 0;)
set hold character to true (this is because we have to things we can draw in the display function. when the game starts we want to hold the character until the user clicks the button.)
initialize the int values i used to create the characters body
create constructor
the character defaults to being held over the buttn, or width/2 length/3 (theses values will be over written later as the constructor only runs once)
create show method
create if statment to reset the hold character to true in the case the user restarts without reseting
change x and y (this is the character that gets displayed in the help screen the rest of the code is the same)
create display method 
if mouse is pressed in the same area as where the play button (set hold character false, this sets x and y to 0 and allows the user to use their mouse to move the character. ontop of th is clicking the play will start the game)
set stroke to 0 so there isn't an outline and translate mouseX and mouseY
else (hold character true)
set the x and y to the same as the constructors x and why, in the case where the user returns to the main screan without restarting
close off braces 
*/