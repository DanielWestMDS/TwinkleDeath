/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not iterate messages if sending dialogue or chat is finished
		if (!global.b_selecting_message && !global.b_burner_read && !b_waiting)
		{
			if (global.i_current_responses > 0)
			{
				global.i_response_distance = 92;
			}
			y -= 92;
			current_messages_sent++;
			current_y = y;
		}
    }
}

if (global.b_laurie_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (4):
				selectbutton(0, false);
			break;
			
			case (9):
				selectbutton(1, false);
			break;
			
			case (14):
				selectbutton(2, true);
			break;
			
			case (18):
				selectbutton(3, true);
			break;
			
			case (22):
				global.b_burner_read = true;
				global.i_chats_read++;
				global.b_selecting_message = false;
				b_chat_finished = true;
			break;
		
		}
	//}
	
}

// teleport away if phone put away
if (!global.b_phoneactive)
{
	x = 10000;
	y = 10000;
}
else
{
	x = 1025;
	y = current_y;
}

// Inherit the parent event
event_inherited();