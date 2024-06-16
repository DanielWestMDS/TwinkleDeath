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
				global.b_dayactive = false;
				global.i_chats_read = 0;
				global.b_chat_opened = false;
				
				// global bools for each chat
				global.b_group_read = false;
				global.b_laurie_read = false;
				global.b_chris_read = false;
				global.b_burner_read = false;
				global.b_leo_read = false;
				global.b_justin_read = false;
				global.b_burner2_read = false;
				global.b_adam_read = false;
				
				global.b_group_paused = false;
			}
	    }
	}
}
else
{
	image_index = 0;
}