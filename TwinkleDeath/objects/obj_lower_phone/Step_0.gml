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

if (global.i_gamescene == 17)
{
	global.b_phoneactive = false;
	y = 10000;
}
else
{
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
					
					// destroy chat
					global.b_chat_opened = false;
					
					// add chats
					if (object_exists(obj_chat_button_select))
					instance_create_layer(1344, 128, "Chat", obj_chat_button_select);
					
					// change phone sprite
					global.tab_open = 0;
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
}