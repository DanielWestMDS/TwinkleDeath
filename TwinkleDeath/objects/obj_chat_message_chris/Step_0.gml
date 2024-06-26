/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if (mouse_check_button_pressed(mb_left) && !global.b_chris_read)
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// chat opened
		global.b_chat_opened = true;
		// change to chat object
		switch(global.i_worldday)
		{
			case(1):
				// day 0 group chat
				instance_create_layer(room_width / 2, 1200, "Chat", obj_chat_laurie_0);
			break;
			
			case(2):
			// day 1 group chat
				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_1);
			break;
			
			case(8):
			// day 2 group chat
				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_2);
			break;
			
			case(9):
				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_3);
			break;
			
			case (10):
			{
				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_10);
			}
		
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
	y = (room_height / 2) + 400;
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

// Inherit the parent event
event_inherited();


