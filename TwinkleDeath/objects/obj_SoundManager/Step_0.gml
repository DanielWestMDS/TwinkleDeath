/// @description Insert description here
// You can write your code in this editor

f_stress += process_stress(f_stress, b_decay);
if (f_stress < 0)
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



if (keyboard_check_pressed(ord("Q")))
{
	add_stressful_event(14);
}
if (keyboard_check_pressed(ord("W")))
{
	add_stressful_event(10);
}
if (keyboard_check_pressed(ord("E")))
{
	set_stress_rate(E_STRESS_LEVEL.LOW_STRESS);
}
if (keyboard_check_pressed(ord("R")))
{
	set_stress_rate(E_STRESS_LEVEL.MEDIUM_STRESS);
}