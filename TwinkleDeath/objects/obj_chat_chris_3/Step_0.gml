/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not iterate messages if sending dialogue or chat is finished
		if (!global.b_selecting_message && !global.b_chris_read && !b_waiting && !b_chat_finished)
		{
			if (current_messages_sent == 19 || current_messages_sent == 29)
			{
				global.i_response_distance = 200;
				y -= 200;
				current_messages_sent++;
				current_y = y;
			}
			else if (current_messages_sent == 27)
			{
				global.i_response_distance = 300;
				y -= 300;
				current_messages_sent++;
				current_y = y;
			}
			else
			{
				global.i_response_distance = 125;
				y -= 125;
				current_messages_sent++;
				current_y = y;
			}
		}

    }
}

if (global.b_chris_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (0):
				selectbutton(0, true);
			break;
			
			case (3):
				selectbutton(1, true);
			break;
			
			case (6):
				selectbutton(2, false);
			break;
			
			case(9):
				selectbutton(3, false);
			break;
			
			case(12):
				selectbutton(4, true);
			break;
			
			case(15):
				selectbutton(5, true);
			break;
			
			case(17):
				selectbutton(6, false);
			break;
			
			// dude stfu
			case(20):
				selectbutton(7, false);
			break;
			
			// you started it
			case(23):
				selectbutton(8, true);
			break;
			
			// i dont want that
			case(26):
				selectbutton(9, true);
			break;
			
			case(28):
				selectbutton(10, true);
			break;
			
			case(30):
				selectbutton(11, false);
			break;
			
			case(33):
				selectbutton(12, true);
			break;
			
			case(38):
				selectbutton(13, true);
			break;
			
			case (40):
				global.b_chris_read = true;
				global.i_chats_read++;
				b_chat_finished = true;
				//selectbutton(3, true)
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