/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// test
		//url_open("https://www.victimsupport.org.nz/crimes-and-traumatic-events/stalking-harassment");

		// may need to make other dialogue options for multiple selections
		
		if (image_index == 4)
		{
			global.i_selected_message = 2;
		}
		else
		{
			global.i_selected_message = 1;
		}
		global.i_current_responses++;
		// perhaps check if other dialogue options exist and destroy those here
		instance_destroy(self);
    }
}

if (global.b_chat_opened == false || !global.b_selecting_message)
{
	instance_destroy();
}