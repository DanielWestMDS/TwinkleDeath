/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		if (!global.b_selecting_message && !global.b_group_read && !b_waiting)
		{

				if (global.i_current_responses > 0)
				{
					global.i_response_distance = 125;
				}
				y -= 125;
				current_messages_sent++;
		}
		current_y = y;
    }
}

if (global.b_group_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (6):
				selectbutton(0, false);
			break;
			
			case(4):
			if (!b_hyperlink_made)
			{
				instance_create_layer(1050, 1480, "Chat", obj_hyperlink);
				b_hyperlink_made = true;
				global.i_current_responses++;
			}
			break;
			
			case (11):
				selectbutton(1, true);
			break;
			
			case (15):
				selectbutton(2, false);
			break;
			
			case (19):
				selectbutton(3, false);
			break;
			
			case (22):
				selectbutton(4, true);
			break;
			
			case (27):
			if (!b_chat_finished)
			{
				global.b_group_read = true;
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