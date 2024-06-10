/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
        //do stuff
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
	x = 960;
	y = 0;
}

// set chats for days
switch(global.i_day)
{
	case(0):
		global.i_chats_to_read = 1;
	break;
	
	case(1):
		global.i_chats_to_read = 1;
	break;
	
	case(2):
		global.i_chats_to_read = 2;
	break;
}