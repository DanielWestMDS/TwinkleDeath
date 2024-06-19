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
	x = 1350;
	y = 870;
}

// set chats for days
switch(global.i_gamescene)
{
	case(1):
		global.i_chats_to_read = 2;
	break;
	
	case(2):
		global.i_chats_to_read = 3;
	break;
	
	case(3):
		global.i_chats_to_read = 1;
	break;
	
	// day 3
	case(4):
		global.i_chats_to_read = 2;
	break;
	
	// gc b
	case(5):
		global.i_chats_to_read = 1;
	break;
	
	// day 4
	case(6):
		global.i_chats_to_read = 2;
	break;
	
	// day 5
	case(7):
		global.i_chats_to_read = 3;
	break;
	
	// day 6
	case(8):
		global.i_chats_to_read = 1;
	break;
	
	// group b burner b
	case(9):
		global.i_chats_to_read = 2;
	break;
	
	case(10):
		global.i_chats_to_read = 4;
	break;
	
	default:
		global.i_chats_to_read = 0;
}

if (global.tab_open != 1)
{
	global.b_chat_opened = false;
}