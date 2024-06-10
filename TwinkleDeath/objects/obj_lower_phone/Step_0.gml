/// @description Insert description here
// You can write your code in this editor

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
				//global.tab_open = 0;
			}
			else
			{
				// move everything related to the phone 
				global.b_phoneactive = false;
				
				// disable feed
				global.tab_open = 1;
			}
		}
    }
}