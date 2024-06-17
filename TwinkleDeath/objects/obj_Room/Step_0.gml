/// @description Checking our status in the game
if (!global.b_dayactive)
{
	b_resetroom = true;
}
if (global.b_dayactive && b_resetroom)
{
	obj_Room.x = -900;
	b_resetroom = false;
}


if (global.i_gameday != 60)
{
	if (!global.b_dayactive && fadecooldowncurrent == fadecooldownmax)
	{
		fadecooldowncurrent = 40;
		update_days(global.i_gameday, global.i_worldday);
		show_debug_message(string(global.i_gameday) + " scene, " + string(global.i_worldday) + " day");
		//New Day Setup
		if ((global.i_gameday == 1) ||(global.i_gameday == 21))
		{
			//Phone up on day 1 to begin with
			global.b_phoneactive = true;
		}
		else
		{
				global.b_phoneactive = false;
		}
		//Start Day
		global.b_dayactive = true;
	}
	else if (!global.b_dayactive)
	{
		fadecooldowncurrent = fadecooldowncurrent -0.5;
		global.tab_open = 1;
		
	}
	
	//Day Code
	if (global.b_dayactive)
	{
		//Check end day Prompt
		if (global.b_endday == true)
		{
			global.b_dayactive = false;
		}
	}
	
	if (!global.b_phoneactive)
	{
	move_with_cam(self, -1505, 0);
	}
}

if (global.e_time_of_day == E_TIMEOFDAY.MORNING || global.e_time_of_day == E_TIMEOFDAY.AFTERNOON)
{
	image_index = 1;
}
else
{
	image_index = 0;
}