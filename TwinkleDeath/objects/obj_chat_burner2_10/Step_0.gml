/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		if (!global.b_selecting_message && !global.b_burner2_read && !b_waiting)
		{
			if (current_messages_sent == 8)
			{
				if (global.i_current_responses > 0)
				{
					global.i_response_distance = 580;
				}
				y -= 580;
				current_messages_sent++;
			}
			else
			{
				if (global.i_current_responses > 0)
				{
					global.i_response_distance = 123;
				}
				y -= 123;
				current_messages_sent++;
			}
		}
		current_y = y;
    }
}

if (global.b_burner2_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (3):
				selectbutton(0, false);
			break;
			
			case (10):
				selectbutton(1, true);
			break;
			
			case (14):
				selectbutton(2, true);
			break;
			
			case (16):
				selectbutton(3, false);
			break;
			
			case (28):
			if (!b_chat_finished)
			{
				global.b_burner2_read = true;
				global.i_chats_read++;
				b_chat_finished = true;
			}
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