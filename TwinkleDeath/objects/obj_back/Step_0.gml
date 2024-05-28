/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// destroy chat
		global.b_chat_opened = false;
		
		// add chats
		instance_create_layer(1344, 448, "Chat", obj_chat_button_group);
		
		// remove button
		instance_destroy(self);
    }
}

// change sprite if mouse hover
if (position_meeting(mouse_x, mouse_y, id))
{
    //mouse is hovering
	image_index = 1;
}
else
{
	image_index = 0;
}