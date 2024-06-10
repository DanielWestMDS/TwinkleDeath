/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// chat tab opened
		//global.b_chat_opened = true;
		// set message tab selected
		global.tab_open = 1;
		// create each chat button
		instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_message_group);
		//instance_destroy(self);
    }
}

// teleport away if phone put away
if (global.b_phone_away)
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


