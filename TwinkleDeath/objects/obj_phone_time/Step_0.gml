/// @description Insert description here
// You can write your code in this editor

// change sprite based on random on new day

//Resets Room on new day
if (!global.b_dayactive)
{
	i_new = 0;
}
if (global.b_dayactive && i_new != 2)
{
	i_new++;
	//Set new sprite
	if (global.e_time_of_day == E_TIMEOFDAY.MORNING || global.e_time_of_day == E_TIMEOFDAY.AFTERNOON)
	{
		image_index = 0;
	}
	else
	{
		image_index = 1;
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
	x = 1059;
	y = 85;
}



