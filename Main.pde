//2/25/2021 Jacob Chiu G11. Falling Game RST ICS3UR.51 Mr Kelly Kinahan 

//Resources
//https://www.rapidtables.com/web/color/RGB_Color.html
//background color 219,85,85 dirty pantone red
//size 700, 870
//playing size 600, 870 (add a border so the charcter can still move when the mouse is "off screen")

//state classes and arrays
cloud[] clouds = new cloud[10]; // create cloud list
character c; // bring character class
play p; // bring play class
spikes[] s = new spikes[3];
PImage glhf; // asign PImage to glhf

void setup() { //open setup bracket
	size(700, 870, P2D); //play area size and P2D
	background(219, 85, 85); //backgroud color, pantone red type color
	for (int i = 0; i < clouds.length; i++) {
		clouds[i] = new cloud()
	}
	for (int i = 0; i < s.length; i++) {
		s[i] = new spikes()
	}
	c = new character();
	p = new play(); //initiate the classes
	glhf = loadImage("images.png"); //load good luck have fun picture to glhf
} //close setup bracket

boolean gameStart = false;
boolean holdCharacter = true;
boolean helpNeeded = false; //initiate the boolean variables that control the if statments later

int score;
int spikePos;
//int[] spikeCoords = new int[2];

//create walls
void walls() { //open wall bracket
	rectMode();
	noStroke(0);
	fill(97, 89, 89);
	rect(0, 0, 70, 870);
	rect(630, 0, 70, 870);
} //close wall bracket

void playerScore() { //keep track of player score
	if (gameStart) { //shorter ver of if game start == true
		score += 100; //add 100 to the score (100ft fallen per second)
		fill(255, 255, 255);
		textSize(25);
		text(score + "ft", 75, 25);
	} //close if game start
} //close void

void greetings() {
	fill(225, 237, 61); //color
	textSize(50); //size
	text("FREE FALL", 225, 70); //pos 
} //game title "FREE FALL"

void help() {
	textSize(25);
	if (mouseX > 250 && mouseX < 463 && mouseY > 80 && mouseY < 105) {
		cursor(HAND);
		fill(225, 237, 61, 191);
		text("[Click here for help]", 250, 100);
		if (mousePressed == true && mouseX > 250 && mouseX < 463 && mouseY > 80 && mouseY < 105) {
			helpNeeded = true;
		} //help menu text highlighted
	} //close if mouse is over
	else {
		fill(225, 237, 61);
		text("[Click here for help]", 250, 100);

	} //help menu text un highlighted
} //close void help

void helpNeed() {
	fill(225, 237, 61);
	textSize(25);
	text("Control the character with your mouse. ", 5, 70);
	text("Dogde the logs as you fall.", 5, 100);
	text("The distance you have fallen is recorded in the top left corner.", 5, 130);
	text("Hit ENTER to exit the help menu.", 5, 160);
} //help menu 

void draw() { //testing
	background(219, 85, 85);
	for (int i = 0; i < clouds.length; i++) {
		clouds[i].display();
		clouds[i].ascend();
		clouds[i].top(); //initiate each cloud as loop cylces
	} //close loop
	walls();
	if (gameStart == false) {
		greetings(); //game title
		help(); //help text
		p.display(); //button
		p.lightUp(); //light up method for button
		c.display(); //character
		if (helpNeeded == true) {
			background(0, 65, 106);
			helpNeed(); //help needed menu
			c.show();
			s[1].show(); //character on other page
			image(glhf, 100, 200);
			if (keyPressed) {
				if (key == ENTER) {
					helpNeeded = false;
				}
			} //close if key pressed		
		} //close help needed
	} //close if game start
	else { //game started
		for (int i = 0; i < s.length; i++) {
			spikePos = s[i].display();
			//spikeCoords = s[i].display();
			s[i].ascend();
			s[i].top()
		} //close for spikes
		playerScore();
		//s[1].display();//for debug

		c.display();

		//	println("spike position " + spikePos);
		//println ("mouse pos " + mouseY);//for debug
		// println("mouse x " + mouseX);

		//spikeX = spikeCoords[0];
		//spikeY = spikeCoords[1];
		
		//if (mouseY == spikeY) && (mouseX => spikeX-10) && (mouseX =< spikeX+10))
		
		if (int(mouseY) == int(spikePos)) {
			println("touched spike");//for debug
			gameStart = false;
		} //close if 				
	} //close else
} //close testing *draw*

/*
bring classes over to main page
state PImage
initiate classes (use loop to initiate class arrays)
load PImage
state boolean variables (theses boolean variables control the branching in the draw funtion)
state int variables (score keeps track of score and spikePos keeps track of y value of spike)
create walls function
make two grey rectangles on either side of the playing area
create player score function
if game start the score will increase by 100
score is positioned at 75, 25 with size 25 text
print the score
greetings function draws the game name at 225, 70 with size 50 text
help function prints click here for help
if user hovers over the same area as the text it will highlight
else the text gos back to normal
if user clicks in the same area as the text it will set helpNeeded to true
create help needed function
explain premise of game
tell them to hit enter to exit help menu
if key pressed == enter then set helpNeeded = false (later on in the draw function)
draw function
start by drawing background pantone red like color
draw the clouds with a loop to pick the clouds from the array
draw the walls 
if game start == false
display the greetings
display the help text
hold character over play button
if user hovers over play button area highlight play button, if user clicks set game start = true
if help needed display help menu and have fun picture, character and spike model
if user hit enter set help needed = false to break out of the if statment
when game start (else)
draw the spikes like we drew the clouds
display player score
display character that can be moved by user mouse
if user mouseY == spikePos then set gameStart false to end game
spike pos is the Y value of the spike
close off the draw and any other statments
*/