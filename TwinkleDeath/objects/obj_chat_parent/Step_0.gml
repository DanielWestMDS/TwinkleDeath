/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 

    }
}

// destroy all chats if a chat is opened
if (global.b_chat_opened)
{
	instance_destroy(self);
}