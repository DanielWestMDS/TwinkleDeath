/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not iterate messages if sending dialogue or chat is finished
		if (!global.b_selecting_message && !b_waiting && !b_chat_finished)
		{
			if (current_messages_sent == 3)
			{
				global.i_response_distance = 700;
				y-= 700;
				current_messages_sent++;
			}
			else
			{
				if (global.i_current_responses > 0)
				{
					global.i_response_distance = 200;
				}
				y -= 200;
				current_messages_sent++;
			}
			current_y = y;
		}
    }
}

if (global.b_justin_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (1):
				selectbutton(0, false);
			break;
			
			case (3):
			if (!global.b_selecting_message)
			{
				instance_create_layer(1650, 1000, "instances", obj_dialogue, {image_index :1});
				global.b_selecting_message = true;
			}
			
			if (global.i_selected_message != 0)
			{
				instance_create_layer(x + 500, 1800, "Chat", obj_justin_screenshot);
				// reset globals once dialogue selected
				global.b_selecting_message = false;
				global.i_selected_message = 0;
				current_messages_sent++;
			}
			break;
			
			case (9):
				selectbutton(2, false);
			break;
			
			case (11):
				global.b_justin_read = true;
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