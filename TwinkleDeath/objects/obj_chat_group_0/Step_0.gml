/// @description Insert description here
// You can write your code in this editor

if (global.i_worldday != 1)
{
	instance_destroy();	
}

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not iterate messages if sending dialogue or chat is finished
		if (!global.b_selecting_message && !global.b_group_read && !b_waiting)
		{
			if (current_messages_sent == 2 || current_messages_sent == 4)
			{
				global.i_response_distance = 480;
				y -= 480;
				current_messages_sent++;
				
				if (posts_sent == 0)
				{
					posts_sent++;
					instance_create_layer(1290, 1810, "Chat", obj_post, {sprite_index : spr_post0});
					global.i_current_responses++;
				}
				else
				{
					posts_sent++;
					instance_create_layer(1290, 1330, "Chat", obj_post, {sprite_index : spr_post1});
				}
				//global.i_current_responses++;
			}
			else
			{
				global.i_response_distance = 110;
				y -= 110;
				current_messages_sent++;
			}
			current_y = y;
		}

    }
}

if (global.b_group_read == false)
{
	//if (global.i_selected_message == 0 && !global.b_selecting_message)
	//{
	// dialogue option at certain message
		switch (current_messages_sent)
		{
			case (0):
			if (!global.b_selecting_message)
			{
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one);
			}
				global.b_selecting_message = true;
				dialogue(0);
			break;
			
			case (7):
			if (posts_sent == 2)
			{
				global.i_current_responses++;
				posts_sent++;
			}
			if (!global.b_selecting_message)
			{
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one, {image_index : 1});
			}
				global.b_selecting_message = true;
				dialogue(1);
			break;
			
			case (20):

			
			if (!global.b_selecting_message)
			{
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one, {image_index : 2});
			}
				global.b_selecting_message = true;
				dialogue(2);
			break;
			
			case (23):
			if (!global.b_selecting_message)
			{
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one, {image_index : 3});
			}
				global.b_selecting_message = true;
				dialogue(3);
			break;
			
			case (25):
			if (!b_chat_finished)
			{
				global.b_group_read = true;
				global.i_chats_read++;
				b_chat_finished = true;
			}
			break;
		}
	//}
	
	
	// move to laurie chat at this message
	if (current_messages_sent == 13)
	{
		// lock chat until laurie messages read
		global.b_group_paused = true;
		b_waiting = true;
	}
	
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