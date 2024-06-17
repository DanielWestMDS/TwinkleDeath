/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left)
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		if (global.tab_open != 1)
		{
		// chat tab opened
		//global.b_chat_opened = true;
		// set message tab selected
			global.tab_open = 1;
		// create each chat button
			switch (global.i_gameday)
			{
			case (1):
				if (global.b_group_paused)
				{
					instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_laurie);
				}//instance_destroy(self);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
			break;
			
			case (2):
				// need code for checking game time
				
				instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_laurie);
				instance_create_layer(room_width / 2, (room_height / 2) + 1600, "Chat", obj_chat_message_chris);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
			break;
			
			case (3):
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
				instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_laurie);
			break;
			
			case (4):
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
				instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_laurie);
			break;
			
			case (5):
			if (global.b_justin_paused)
			{
				instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_laurie);
			}
				instance_create_layer(room_width / 2, (room_height / 2) + 1600, "Chat", obj_chat_message_justin);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
			break;
			
			case (6):
				instance_create_layer(room_width / 2, (room_height / 2) + 1600, "Chat", obj_chat_message_burner);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
			break;
			
			case (7):
				instance_create_layer(room_width / 2, (room_height / 2) + 1600, "Chat", obj_chat_message_burner);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
			break;
			
			case (8):
				instance_create_layer(room_width / 2, (room_height / 2) + 800, "Chat", obj_chat_message_burner);
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
				instance_create_layer(room_width / 2, (room_height / 2) + 1600, "Chat", obj_chat_message_trip);
				instance_create_layer(room_width / 2, (room_height / 2) + 2000, "Chat", obj_chat_message_chris);
			break;
			
			}
		}
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
	x = 1344;
	y = 128;
}

// Inherit the parent event
event_inherited();


