//STRESS MECHANIC
/*
Scott has two methods to up stress:
1) set_stress_rate(_stress)
sets the rate of stress gain. 
Whilst phone is active, Stress will be gained.
Call when on specific chats, for example

2) add_stressful_event(float)
will divide by a number and add on top of the rate for a while.

Other functions here:
get_stress_rate()
	Returns rate of stress for soundmanager to access
	
process_stress()
	Runs through stress calculations
*/

enum E_STRESS_LEVEL
{
	LOW_STRESS,
	SLIGHT_STRESS,
	MEDIUM_STRESS,
	HIGH_STRESS,
	MILD_PANIC,
}

//global.f_addingstress;

function set_stress_rate(_stress_enum)
{
	if (_stress_enum = E_STRESS_LEVEL.LOW_STRESS)
	{
		global.f_stressrate = -1;
	}
	if (_stress_enum = E_STRESS_LEVEL.SLIGHT_STRESS)
	{
		global.f_stressrate = 0.2;
	}
	if (_stress_enum = E_STRESS_LEVEL.MEDIUM_STRESS)
	{
		global.f_stressrate = 0.4;
	}
	if (_stress_enum = E_STRESS_LEVEL.HIGH_STRESS)
	{
		global.f_stressrate = 1;
	}
	if (_stress_enum = E_STRESS_LEVEL.MILD_PANIC)
	{
		global.f_stressrate = 2;
	}
}

function add_stressful_event(_float_stress)
{
	global.f_addingstress += _float_stress;
}

function get_stress_rate()
{
}


function process_stress(_stress,_decay)
{
	//Current Stress
	addingstress = (global.f_addingstress / 20);
	currentstress = global.f_stressrate + addingstress*2;
	if (_decay)
	{
		global.f_addingstress -= addingstress;
		if (global.f_addingstress <= 2)
		{
			global.f_addingstress = 0;
		}
		show_debug_message("decay by " + string(addingstress));
		return currentstress;
	}
	return 0;
}