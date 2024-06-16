
//Resets Room on new day
if (!global.b_dayactive)
{
	i_resetroom = 0;
}
if (global.b_dayactive && i_resetroom != 2)
{
	self.x = -900;
	i_resetroom++;
	
	image_speed = 0;
	
	//Set whether it is day or night
	if (global.e_time_of_day == E_TIMEOFDAY.MORNING || global.e_time_of_day == E_TIMEOFDAY.AFTERNOON)
	{
		b_day = true;
	}
	else
	{
		b_day = false;
	}
	//Set if the blinds start open or closed in the day
	if (global.i_gameday == 1)
	{
		b_startopen = true;
	}
	else
	{
		b_startopen = false;
	}
	
	//Set Which Blinds we are using
	if (b_day == true)
	{
		i_openblinds = 6;
		i_closeblinds = 10;
	}
	if (b_day == false)
	{
		//Night
		i_openblinds = 1;
		i_closeblinds = 5;
	}
	
	//Set Starting Blinds
	if (b_startopen)
	{
		image_index = i_openblinds;
		b_open = true;
	}
	else
	{
		image_index = i_closeblinds;
		b_open = false;
	}	
	
	
}




if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if (collision_point(mouse_x, mouse_y, id, true, false) && b_canclick && !global.b_phoneactive)
	{
		if (!b_animating)
		{
			if (b_open)
			{
				image_speed = 1; //Cycle forward to close\
				i_goalframe = i_closeblinds;
				image_index = i_openblinds;
				show_debug_message("Closing");
			}
			else
			{
				image_speed = -1; //Cycle back to open
				i_goalframe = i_openblinds;
				image_index = i_closeblinds;
				show_debug_message("Opening");
			}
			b_animating = true;
		}
	}
}
//Animation
if (b_animating)
{
			if (i_goalframe == image_index)
			{
				image_speed = 0;
				
				b_animating = false;
				b_open = !b_open;
				if (b_open)
				{
					image_index = i_openblinds;
				}
				else
				{
					image_index = i_closeblinds;
				}
			}
}