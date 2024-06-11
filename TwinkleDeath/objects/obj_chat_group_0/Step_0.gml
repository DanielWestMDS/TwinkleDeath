/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not iterate messages if sending dialogue or chat is finished
		if (!global.b_selecting_message && !global.b_group_read && !b_waiting)
		{
		    //iterate messages
			image_index++;
			if (image_index >= f_chat_length - 1)
			{
				b_chat_finished = true;	
				global.b_group_read = true;
				global.i_chats_read++;
			}
		}
    }
}

if (global.b_group_read == false)
{
	// dialogue option at certain message
	if (image_index == 1)
	{
		// stop repopulating select dialogue once pressed
		if (global.i_selected_message == 0)
		{
			// only make one dialogue
			if (!b_dialogue_generated)
			{
				b_dialogue_generated = true;
				global.b_selecting_message = true;
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one);
			}
		}
		else if (global.i_selected_message == 1)
		{
			// change this to other image for multi dialogue options
			image_index++;
			// reset for no selected message
			global.i_selected_message = 0;
		}
	}
	
		// dialogue option at certain message
	if (image_index == 11)
	{
		// stop repopulating select dialogue once pressed
		if (global.i_selected_message == 0)
		{
			// only make one dialogue
			if (!b_dialogue_generated)
			{
				b_dialogue_generated = true;
				global.b_selecting_message = true;
				instance_create_layer(1650, 1000, "instances", obj_dialogue_groupchat_one, {image_index : 1});
			}
		}
		else if (global.i_selected_message == 1)
		{
			// change this to other image for multi dialogue options
			image_index++;
			// reset for no selected message
			global.i_selected_message = 0;
		}
	}
	
}

// lock chat until laurie messages read
if (image_index == 17)
{
	b_waiting = true;
}

// teleport away if phone put away
if (!global.b_phoneactive)
{
	x = 10000;
	y = 10000;
}
else
{
	x = room_width / 2;
	y = room_height / 2;
}

// Inherit the parent event
event_inherited();