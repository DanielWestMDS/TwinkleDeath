
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

//Resets Room on new day
if (!global.b_dayactive)
{
	b_resetroom = true;
}
if (global.b_dayactive && b_resetroom)
{
	self.x = -900;
	b_resetroom = false;
	
	image_speed = 0;
	//Set Which Blinds we are using
	if (b_day == true)
	{
		i_openblinds = 5;
		i_closeblinds = 9;
	}
	else
	{
		//Night
		i_openblinds = 0;
		i_closeblinds = 4;
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
			b_goalstate = !b_open; //Set desired position: Open, or closed?
			if (b_open)
			{
				image_speed = 0.5; //Cycle forward to close\
				show_debug_message("Closing");
			}
			else
			{
				image_speed = -0.5; //Cycle back to open
				show_debug_message("Opening");
			}
			b_animating = true;
		}
	}
}
//Animation
if (b_animating)
		{
			//Process of Animating
			if (b_goalstate == true && image_index == i_openblinds)
			{
				b_open = true;
				image_speed = 0;
				b_animating = false;
			}
			else if (b_goalstate == false && image_index == i_closeblinds)
			{
				b_open = false;
				image_speed = 0;
				b_animating = false;
			}
		}