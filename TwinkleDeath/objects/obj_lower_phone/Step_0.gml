/// @description Insert description here
// You can write your code in this editor

if (global.b_dayactive)
{
	depth = -4;
}
else
{
	depth = 0;
}



// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not do anything while selecting dialogue
		if (!global.b_selecting_message)
		{
			if (!global.b_phoneactive)
			{
				global.b_phoneactive = true;

			}
			else
			{
				// move everything related to the phone 
				global.b_phoneactive = false;
				global.tab_open = 1;
			}
		}
    }
}

if position_meeting(mouse_x, mouse_y, id) 
{ 
	 if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
	if (!global.b_selecting_message)
		{
			if (global.b_phoneactive)
			{
				image_index = 3;
			}
			else
			{
				image_index = 1;
			}
		}
	}
}
else
{
	if (global.b_phoneactive)
	{
		image_index = 2;
	}
	else
	{
		image_index = 0;
	}
}