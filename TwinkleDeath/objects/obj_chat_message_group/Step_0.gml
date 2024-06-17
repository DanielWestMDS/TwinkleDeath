/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// chat opened
		global.b_chat_opened = true;
		// change to chat object
		switch(global.i_gameday)
		{
			case(1):
				// day 0 group chat
				instance_create_layer(1025, 600, "Chat", obj_chat_group_0);
			break;
			
			case(2):
			// day 1 group chat
			// change this to if afternoon
			if (!global.b_group_paused)
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_1);
			}
			else
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_1b);
			}
			break;
			
			case(3):
			// day 2 group chat
			if (!global.b_group_paused)
			{
				instance_create_layer(1025, 1260, "Chat", obj_chat_group_2);
			}
			else
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_2b);
			}
			break;
			
			case (4):
				instance_create_layer(1025, 1260, "Chat", obj_chat_group_3);
			break;
			
			case (5):
				instance_create_layer(1025, 1260, "Chat", obj_chat_group_4);
			break;
			
			case(6):
			if (global.e_time_of_day == 0)
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_5);
			}
			else
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_5b);
			}
			break;
			
			case(7):
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_6);
			break;
			
			case(8):
			if (global.e_time_of_day == 0)
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_7);
			}
			else
			{
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_7a);
			}
			
			case(10):
				instance_create_layer(1025, 1160, "Chat", obj_chat_group_9);
			break;
		}
		instance_destroy(self);
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
	x = room_width / 2;
	y = room_height / 2;
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

event_inherited();
