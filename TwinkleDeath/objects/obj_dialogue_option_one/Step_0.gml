/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// reset globals once dialogue selected
		global.b_selecting_message = false;
		// may need to make other dialogue options for multiple selections
		global.i_selected_message = 1;
		// perhaps check if other dialogue options exist and destroy those here
		instance_destroy(self);
    }
}