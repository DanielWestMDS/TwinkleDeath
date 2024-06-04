
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
	if (mouse_wheel_up() && curblock <= 0)
	{
		yPos += 64;
	}
	if (mouse_wheel_down() && curblock >= -maxfeedlength+2)
	{
		yPos -= 64;
	}
}
else { feedopen = false }


curblock = floor(yPos / blength);

/*
// only updates the background when scrolled between blocks
if ((curblock != prevblock) || (!feedopen && !global.b_chat_opened))
{
	create_feed()
}
*/
if (!feedopen && !global.b_chat_opened)
{
	create_permfeed()
}
prevblock = curblock