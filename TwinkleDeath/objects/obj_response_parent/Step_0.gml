/// @description Insert description here
// You can write your code in this editor

if (global.i_response_distance != 0)
{
	new_y -= global.i_response_distance;
	global.i_responses_moved++;
	
	if (global.i_current_responses == global.i_responses_moved)
	{
		global.i_response_distance = 0;
		global.i_responses_moved = 0;
	}
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

y = new_y;

// dissappear if phone put away
if (!global.b_phoneactive)
{
	image_alpha = 0;
}
else
{
	image_alpha = 1;
}