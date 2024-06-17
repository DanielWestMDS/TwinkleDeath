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
			case(8):
				instance_create_layer(1025, 1160, "Chat", obj_chat_trip);
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
	y = (room_height / 2) - 200;
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

event_inherited();