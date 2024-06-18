/// @description Insert description here
// You can write your code in this editor

f_stress += process_stress(f_stress, b_decay);
if (f_stress < 0 || global.i_gamescene == 17)
{
	f_stress = 0;
}
if (b_decay)
{
	b_decay = !b_decay;
}

fcooldowntimer--;
if (fcooldowntimer <= fcooldown)
{
	b_decay = true;
	fcooldowntimer = 60;
}



//NEW DAY SOUND UPDATES
if (!global.b_dayactive)
{
	b_changeday = true;
	i_changedaytimer = 0;
	i_fade-= 0.01;
	audio_emitter_gain(global.music_emitter, i_fade);
	audio_emitter_gain(global.background_emitter, i_fade);
	
}
if (global.b_dayactive && b_changeday)
{
	stop_sounds();
	i_changedaytimer++;
	i_fade = 1;
	audio_emitter_gain(global.music_emitter, i_fade);
	audio_emitter_gain(global.background_emitter, i_fade);
	if (i_changedaytimer == 1)
	{
		choose_backtrack();
		b_changeday = false;
		//audio_play_sound_on(global.music_emitter, snd_stresstest, true, 0);
	}
}



// HEARTBEAT //
i_pulse = f_stress;

//Pulse upper limi
if (i_pulse >= 100)
{
	i_pulse = 100;
}
if (i_pulse <= 40)
{
	i_gain = 0;
}
else
{
	i_gain = (i_pulse - 40)/100;
}
audio_emitter_gain(global.heartbeat_emitter, i_gain);


i_timetillbeat++
if (i_timetillbeat >= (140 - i_pulse))
{
	audio_play_sound_on(global.heartbeat_emitter, snd_heartbeat, false,0);
	i_timetillbeat = 0;
}
//show_debug_message(string(i_pulse));

if (i_pulse > 90)
{
	i_panicgain = 1;
	audio_emitter_gain(global.panic_emitter, i_panicgain);
	if (audio_is_playing(snd_panic_attack) = false)
    {
		audio_play_sound_on(global.panic_emitter, snd_panic_attack, false,0);
	}
}
else
{
	i_panicgain -= 0.01;
	audio_emitter_gain(global.panic_emitter, i_panicgain);
}


//Set passive stress levels
if (global.b_phoneactive)
{
	set_stress_rate(E_STRESS_LEVEL.SLIGHT_STRESS);
	if(global.i_worldday > 5)
	{
		set_stress_rate(E_STRESS_LEVEL.MEDIUM_STRESS);
	}
	if(global.i_worldday > 8)
	{
		set_stress_rate(E_STRESS_LEVEL.HIGH_STRESS);
	}
}
else
{
	set_stress_rate(E_STRESS_LEVEL.LOW_STRESS);
	if(global.i_worldday > 5)
	{
		set_stress_rate(E_STRESS_LEVEL.SLIGHT_STRESS);
	}
}