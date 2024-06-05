/// @description Checking our status in the game

if (global.i_gameday != 60)
{
	if (!global.b_dayactive && fadecooldowncurrent == fadecooldownmax)
	{
		show_debug_message("New Day Created");
		fadecooldowncurrent = 0;
		update_days(global.i_gameday, global.i_worldday);
		show_debug_message(string(global.i_gameday) + " scene, " + string(global.i_worldday) + " day");
		//New Day Setup
		if ((global.i_gameday == 0) ||(global.i_gameday == 60))
		{
			//Phone up on day 0 to begin with
			global.b_phoneactive = true;
		}
		//Start Day
		global.b_dayactive = true;
	}
	else if (!global.b_dayactive)
	{
		fadecooldowncurrent --;
		show_debug_message("Day in " + string(fadecooldowncurrent));
	}
	
	//Day Code
	if (global.b_dayactive)
	{
		modify_stress();
		
		//Check end day Prompt
		if (global.b_endday == true)
		{
			global.b_dayactive = false;
		}
	}
	
	
}