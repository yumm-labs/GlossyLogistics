//
// Detailed tutorial on how this all works can be seen here: http://www.kirupa.com/html5/creating_falling_snow_in_html_js.htm
//

// array to store our Snowflake objects
var snowflakes = [];

// global variables to store our browser's window size
var browserWidth;
var browserHeight;

// specify the number of snowflakes you want visible
var numberOfSnowflakes = 25;

//
// listen for "DOMContentLoaded", "resize", and "focus" events and handle them
//
function setup() {
	this.addEventListener("DOMContentLoaded", generateSnowflakes, true);
	this.addEventListener("resize", resetPositions, true);
	this.addEventListener("focus", tabHasFocus, true);
}

setup();

//
// constructor for our Snowflake class
//
function Snowflake(element, radius, speed, xPos, yPos) {

	// set initial snowflake properties
	this.element = element;
	this.radius = radius;
	this.speed = speed;
	this.xPos = xPos;
	this.yPos = yPos;

	// declare variables used for snowflake's motion
	this.counter = 0;
	this.sign = Math.floor(Math.random() * 2);

	if(this.sign == 1) {
		this.sign = -1;
	} else {
		this.sign = 1;
	}

	// setting an initial opacity and size for our snowflake
	this.element.style.opacity = .1 + Math.random();
	this.element.style.fontSize = 12 + Math.random() * 50 + "px";

	// the function responsible for actually moving our snowflake
	this.update = function() {

		// using some trigonometry to determine our x and y position
		this.counter += this.speed / 300;
		this.xPos += this.sign * this.speed * Math.cos(this.counter) / 20;
		this.yPos += this.speed / 10;

		// setting our snowflake's position
		this.element.style.left = Math.round(this.xPos) + "px";
		this.element.style.top = Math.round(this.yPos) + "px";

		// if snowflake goes below the browser window, move it back to the top
		if(this.yPos > browserHeight) {
			this.yPos = -50;
		}
	}
}

//
// the function responsible for creating the snowflake and letting them
// fall in their merry way
//
function generateSnowflakes(e) {

	// get our snowflake element from the DOM and store it
	var originalSnowflake = document.getElementsByClassName("snowflake")[0];

	// access our snowflake element's parent container
	var snowflakeContainer = originalSnowflake.parentNode;

	// set our browser's size
	browserHeight = window.outerHeight;
	browserWidth = window.outerWidth;

	// create each individual snowflake
	for(var i = 0; i < numberOfSnowflakes; i++) {

		// clone our original snowflake and add it to snowflakeContainer
		var snowflakeCopy = originalSnowflake.cloneNode(true);
		snowflakeContainer.appendChild(snowflakeCopy);

		// set our snowflake's initial position and related properties
		var initialXPos = setPosition(50, browserWidth);
		var initialYPos = setPosition(50, browserHeight);
		var speed = 5 + Math.random() * 40;
		var radius = 4 + Math.random() * 10;

		// create our Snowflake object
		var snowflakeObject = new Snowflake(snowflakeCopy, radius, speed, initialXPos, initialYPos);
		snowflakes.push(snowflakeObject);
	}

	// remove the original snowflake because we no longer need it visible
	snowflakeContainer.removeChild(originalSnowflake);

	// call the moveSnowflakes function every 30 milliseconds
	setInterval(moveSnowflakes, 30);
}

//
// responsible for moving each snowflake by calling its update function
//
function moveSnowflakes() {
	for(var i = 0; i < snowflakes.length; i++) {
		var snowflake = snowflakes[i];
		snowflake.update();
	}
}

//
// this function returns a number between (maximum-offset) and (maximum+offset)
//
function setPosition(offset, size) {
	return Math.round(-1 * offset + Math.random() * (size + 2 * offset));
}

//
// resets the position of all the snowflakes to a new value
//
function resetPositions(e) {
	browserHeight = window.outerHeight;
	browserWidth = window.outerWidth;

	for(var i = 0; i < snowflakes.length; i++) {

		var snowflake = snowflakes[i];
		snowflake.xPos = setPosition(50, browserWidth);
		snowflake.yPos = setPosition(50, browserHeight);
	}
}

//
// this function handles the case where the snowflakes aren't positioned correctly
// because the document was opened as a background tab
//
function tabHasFocus(e) {
	resetPositions(null);
	this.removeEventListener("focus", tabHasFocus, true);
}