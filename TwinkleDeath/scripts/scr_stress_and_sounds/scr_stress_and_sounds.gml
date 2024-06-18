//STRESS MECHANIC
/*
Scott has two methods to up stress:
1) set_stress_rate(_stress)
sets the rate of stress gain. 
Whilst phone is active, Stress will be gained.
Call when on specific chats, for example

2) add_stressful_event(float)
will divide by a number and add on top of the rate for a while.
	max amount added should be 10 at a time

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
		global.f_stressrate = -4;
	}
	if (_stress_enum = E_STRESS_LEVEL.SLIGHT_STRESS)
	{
		global.f_stressrate = -2;
	}
	if (_stress_enum = E_STRESS_LEVEL.MEDIUM_STRESS)
	{
		global.f_stressrate = 0.5;
	}
	if (_stress_enum = E_STRESS_LEVEL.HIGH_STRESS)
	{
		global.f_stressrate = 3;
	}
	if (_stress_enum = E_STRESS_LEVEL.MILD_PANIC)
	{
		global.f_stressrate = 5;
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
	addingstress = (global.f_addingstress / 10);
	currentstress = global.f_stressrate + addingstress;
	if (_decay)
	{
		global.f_addingstress /= 2;
		if (global.f_addingstress <= 2)
		{
			global.f_addingstress = 0;
		}
		return currentstress;
	}
	return 0;
}

function stop_sounds()
{
	if (audio_is_playing(snd_stresstest))
    {
        audio_stop_sound(snd_stresstest);
    }
	if (audio_is_playing(snd_room_tone))
    {
        audio_stop_sound(snd_room_tone);
    }
	if (audio_is_playing(snd_dark_ambient))
    {
        audio_stop_sound(snd_dark_ambient);
    }
	if (audio_is_playing(snd_panic_attack))
    {
        audio_stop_sound(snd_panic_attack);
    }
	if (audio_is_playing(snd_crickets))
    {
        audio_stop_sound(snd_crickets);
    }
	if (audio_is_playing(snd_panic_attack))
    {
        audio_stop_sound(snd_panic_attack);
    }
}

function choose_backtrack()
{
	if (global.i_worldday <= 5 || global.i_gamescene == 17)
		{
			audio_play_sound_on(global.music_emitter, snd_room_tone, true, 0);
		}
		else
		{
			audio_play_sound_on(global.music_emitter, snd_dark_ambient, true, 0);
		}
	if (global.e_time_of_day == E_TIMEOFDAY.MORNING || global.e_time_of_day == E_TIMEOFDAY.AFTERNOON)
	{
		
	}
	else if (global.e_time_of_day == E_TIMEOFDAY.EVENING || global.e_time_of_day == E_TIMEOFDAY.NIGHT)
	{
		audio_play_sound_on(global.background_emitter, snd_crickets, true, 0);
	}
}