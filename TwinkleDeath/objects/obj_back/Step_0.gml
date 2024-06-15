	/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// do not do anything while selecting dialogue
		if (!global.b_selecting_message)
		{
			// destroy chat
			global.b_chat_opened = false;
		
			// add chats
			if (object_exists(obj_chat_button_select))
			instance_create_layer(1344, 128, "Chat", obj_chat_button_select);
			
			// change phone sprite
			global.tab_open = 0;
			
			// remove button
			//instance_destroy(self);
		}
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

// teleport away if phone put away
if (!global.b_phoneactive)
{
	x = 10000;
	y = 10000;
}
else
{
	x = 1060;
	y = 80;
}