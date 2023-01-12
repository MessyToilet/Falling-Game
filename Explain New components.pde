/*
New Components

class{
	constructors
	methods
	Return int();
}
P2D
cursor(HAND)
println
alpha

Class

A class is like a more powerful function, with more functions (methods)
Classes need to be brought over to your main set of code, you must initiate every class you wish to use. 
Classes can be brought over as arrays to have duplicates of your class.

e.g class: cloud

//for one cloud
cloud c;
c = new cloud();

// for array of clouds
cloud[] c = new cloud[x]// x is the length of your array
for (int i = 0; i < c.length; i++) {
		c[i] = new cloud()//we use c[i] because as the loop increases (i++) it will intiate the clouds in the array
	}//we can use a loop to intiate the array becuase its faster for us. i < c.length will make it repeat for the length of the array "x"
	
The variables used in your class are local, therfore if you wish to use a value created in your class you must use the return function.
the constructor of your class is like the void setup of your main, your constructor will only run once. you can use it to state the first x y location of your drawings
following the constructor  your class needs methods, methods are like functions. They have the power to callculate and draw, methods need to be called like a function in your main. 

e.g method display

void draw () {
	c.display();//when calling a method in your main, first you must state the class your calling from "c" for cloud. then with a dot "." followed by the method();
}

methods need to be placed in certain ways to acheive your goal, just like how you need to format your functions. 
if you want to pull a value out of the class you need to use the return function in your method and switch your method from void to the value. Int, boolean, str.

e.g 

int xValue() {
	xReturn = 100 + x;// these are random numbers that represent number you may need to pull
}

//in the main

int xReturn; // int values defualt to 0 

void draw() {
	xReturn = c.xValue();//setting the variable to the classes method that returns the value we want
}


P2D

P2D is a way to better render 2D drawings (primarly when drawings overlap each other)
it better utilieses the processer to make your drawings run smoother and faster. This is important because if you have lots of drawings (some may be off screen) P2D helps spread out the laod.
There are other render techniques such as P3D, P3D will allow you to draw in 3D.


Cursor(HAND)/ cursor(ARROW)

these simply switch your cursor from hand to arrow or vice versa.
these can be used to debug the detection serface of a button (set the cursor to be a hand if your over the detection area)
you will need to put the cusor back to "normal" after you change it


println

println allows for feedback to be given through the console, great for debugging.
you can set it to tell you the values of things including mouseX and mouseY (this helps alot when eyballing the size/ points of things)
println will loop itself and can dramaticly slow down your program.


alpha

the alpha is the fourth value of fill();

e.g 

fill(255,0,0, 255);// this will set the color to red with 100% opacity (normal bold red), not defining the fourth value will defualt to 100% opacity.

fill(255,0,0,40);//this will set the color to red with 25% opacity (near invisible) this can give the illusion of somting highlighting or fading in/ out.

alpha is a small value that can help add detail to your program.







*/