
/* 
	This code segments the game map into slots and assigns a "block" to each slot,
	the code only has 4 slots in each depth at a time to only use what is visible
	to the camera.
	These blocks are in a certain depth in the background which determines how much
	paralaxing will be applied to it.
	Things furhter back follow the camera more efficiently.
	
	There is a lot of things to make sure things stay on screen properly.
*/

// set feed size
switch (global.i_gameday)
{
	case(1):
		maxfeedlength = 3;
	break;
	
	case(2):
		maxfeedlength = 6;
	break;
	
	case(3):
		maxfeedlength = 8;
	break;
	
	case(4):
		maxfeedlength = 11;
	break;
	
	case(5):
		maxfeedlength = 13;
	break;
	
	case(6):
		maxfeedlength = 16;
	break;
	
	case(7):
		maxfeedlength = 18;
	break;
	
	case(8):
		maxfeedlength = 21;
	break;
	
	case(9):
		maxfeedlength = 23;
	break;
	
	case(10):
		maxfeedlength = 23;
	break;
}

// destroy all posts if a chat is opened
if (global.tab_open == 0)
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
if (!feedopen && global.tab_open == 0)
{
	create_permfeed()
}
prevblock = curblock