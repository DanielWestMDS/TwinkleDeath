/// @description Insert description here
// You can write your code in this editor

if (global.i_chats_read == global.i_chats_to_read)
{
	setjournal(0.8);
	
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
				global.b_trip_read = false;
				
				global.b_group_paused = false;
				global.b_justin_paused = false;
				
				// for moving scott messages
				global.i_response_distance = 0;
				global.i_current_responses = 0;
				global.i_responses_moved = 0;
				
				// how many chats read
				global.i_chats_read = 0;
			}
	    }
	}
	
	if position_meeting(mouse_x, mouse_y, id) 
	{ 
		if collision_point(mouse_x, mouse_y, id, true, false) 
		{ 
			if (global.enddaycondition == E_JOURNAL.GODOOR)
			{
				image_index = 8;
			}
			else if (global.enddaycondition == E_JOURNAL.GONOTES)
			{
				image_index = 6;
			}
			else if (global.enddaycondition == E_JOURNAL.GOWORK)
			{
				image_index = 4;
			}
			else if (global.enddaycondition == E_JOURNAL.GOSLACK)
			{
				image_index = 10;
			}
			else
			{
				image_index = 2;
			}
		}
		else
		{
			if (global.enddaycondition == E_JOURNAL.GODOOR)
			{
				image_index = 7;
			}
			else if (global.enddaycondition == E_JOURNAL.GONOTES)
			{
				image_index = 5;
			}
			else if (global.enddaycondition == E_JOURNAL.GOWORK)
			{
				image_index = 3;
			}
			else if (global.enddaycondition == E_JOURNAL.GOSLACK)
			{
				image_index = 9;
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
	setjournal(0.1);
}