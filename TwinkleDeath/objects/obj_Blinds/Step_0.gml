if (!global.b_dayactive)
{
	b_resetroom = true;
}
if (global.b_dayactive && b_resetroom)
{
	self.x = -900;
	b_resetroom = false;
}

if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if (collision_point(mouse_x, mouse_y, id, true, false) && b_canclick && !global.b_phoneactive)
	{
		//Play Animation
		//play animation
		if (b_open)
		{
			image_index = 0;
			b_open = !b_open;
		}
		else if (!b_open)
		{
			image_index = 4;
			b_open = !b_open;
		}
	}
}