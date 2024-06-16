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
			// keeping this for later (not necessary)
			if (current_messages_sent == 1000)
			{
				global.i_response_distance = 480;
				y -= 480;
				current_messages_sent++;
				
				if (posts_sent == 0)
				{
					posts_sent++;
					instance_create_layer(1290, 1330, "Chat", obj_post, {sprite_index : spr_post0});
				}
				else
				{
					instance_create_layer(1290, 1330, "Chat", obj_post, {sprite_index : spr_post1});
				}
				global.i_current_responses++;
			}
			else
			{
				if (global.i_current_responses > 0)
				{
					global.i_response_distance = 120;
				}
				y -= 120;
				current_messages_sent++;
			}
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
			case (8):
				selectbutton(0, true);
			break;
			
			case (14):
				selectbutton(1, false);
			break;
			
			case (15):
				global.b_group_paused = true;
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