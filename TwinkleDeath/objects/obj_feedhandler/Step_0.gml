
/* 
	This code segments the game map into slots and assigns a "block" to each slot,
	the code only has 4 slots in each depth at a time to only use what is visible
	to the camera.
	These blocks are in a certain depth in the background which determines how much
	paralaxing will be applied to it.
	Things furhter back follow the camera more efficiently.
	
	There is a lot of things to make sure things stay on screen properly.
*/
// destroy all posts if a chat is opened
if !(global.b_chat_opened)
{
	if (mouse_wheel_up())
	{
		yPos += 32;
	}
	if (mouse_wheel_down())
	{
		yPos -= 32;
	}
}
else { feedopen = false }

   
curblock = floor(yPos / blength);
var paraindex0 = floor((yPos) / blength);

// checks if the player has moved far enough to add an extra slot to 
// overcompensate. (similar to leap years)
/*
if yPos >= 0 {
	curblock = floor(yPos / blength)
	paraindex0 = floor((yPos*(0.05)) / blength)
}
else {
	curblock = ceil(yPos / blength)
	paraindex0 = ceil((yPos*(0.05)) / blength)
}
*/

// only updates the background when scrolled between blocks
if (curblock != prevblock) || (!feedopen && !global.b_chat_opened)
{
	create_feed()
}

prevblock = curblock