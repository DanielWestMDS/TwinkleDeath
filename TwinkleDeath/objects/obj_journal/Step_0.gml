/// @description Insert description here
// You can write your code in this editor

if (global.i_chats_read == global.i_chats_to_read)
{
	image_index = 1;
	
	if mouse_check_button_pressed(mb_left) 
	{
		//Arguments are (x, y, obj, prec, notme)
	    if collision_point(mouse_x, mouse_y, id, true, false) 
		{ 
			// do not do anything while selecting dialogue
			if (!global.b_selecting_message)
			{
				// put code for next day here
				global.i_day++;
				global.i_chats_read = 0;
			}
	    }
	}
}
else
{
	image_index = 0;
}