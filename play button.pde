class play {
	
	float x;
	float y;// declare x and y 
	
	boolean over = false;// set over to false, this is the value that will keep track if the mouse is over the play button

	play() {//constructor
		x = 350;
		y = 435;
	}

	void lightUp() {
		if (mouseX > 325 && mouseX < 375 && mouseY > 410 && mouseY < 460) { 	
			over = true;
			cursor(HAND);
		}
		else {
			over = false;
			cursor(ARROW);
		}
	}

	void display() {						
		
		if (over == true) {
			fill(255,237,61,191);// color yellow with 75% opac
		}
		else {
			fill(255,237,61);// color yellow	
		}
		triangle(-25 + x,-25 + y,-25 + x,25 + y,25 + x,-25 + y);//right triangle
		if (over == true) {// over == true checks if the mouse is over the button. over was deffiend earlier
			fill(255,224,61, 191); // play button has two shades of yellow
		}
		else {//else is when the mouse isn't over the play button, drawing the features of the button normally
			fill(255,224,61); // play button has two shades of yellow
		}	
		triangle(-25 + x,25 +y,25 + x,-25 + y,25 + x,25 + y);//right triangle
		if (over == true) {
			fill(255,255,255, 191);
		}
		else {
			fill(255,255,255);
		}
		triangle(-12.5 + x, -12.5 + y, -12.5 + x, 12.5 + y, 13.5 + x, 0  + y);
	}

//this checks if the mouse is over the play button, if it is it will set the opacity to 75%. if the mouse isn't over it will draw it normally.(same two triangles as the character but with a white triangle in the middle)
}//close class

/*
create class play (short for play button)
intialize floats of x and y (we need to do this every time because the variables are not golbal)
set over == false (this is the boolean used for detecting if the user is over the button)
create constructer 
set x and y to where i want the button to be placed
create method light up
if user mouse is over the button set over == false)
switch user cursor to the hand
else set over == false
create method display 
if over == true highlight the button by adjusting the alpha (the fourth value in the fill(r,g,b,apha)
else set the alpha back to normal (this makes it highlight then un highlight)
create the actual button model
two right riangles whos alpha will change and a white triangle in the middle
close off class/ braces
*/