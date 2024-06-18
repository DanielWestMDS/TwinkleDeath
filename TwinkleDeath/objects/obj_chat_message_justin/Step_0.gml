/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if (mouse_check_button_pressed(mb_left) && !global.b_justin_read)
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// chat opened
		global.b_chat_opened = true;
		// change to chat object
		switch(global.i_worldday)
		{
			
			case(5):
			// day 2 group chat
			if (!global.b_laurie_read)
			{
				instance_create_layer(room_width / 2, 1200, "Chat", obj_chat_justin_4);
			}
			else
			{
				instance_create_layer(room_width / 2, 1200, "Chat", obj_chat_justin_4a);
			}
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
	y = (room_height / 2) + 600;
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

// Inherit the parent event
event_inherited();


