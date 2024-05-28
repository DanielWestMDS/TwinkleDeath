/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// set chat variable to open
		global.b_chat_opened = true;
		// change to chat sprite
		instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_group);
		instance_destroy(self);
    }
}

// Inherit the parent event
event_inherited();


