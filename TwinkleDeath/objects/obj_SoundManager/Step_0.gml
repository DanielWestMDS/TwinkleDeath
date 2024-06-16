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
}
if (global.b_dayactive && b_changeday)
{
	i_changedaytimer++;
	if (i_changedaytimer == 1)
	{
		b_changeday = false;
		audio_play_sound(snd_room_tone, 10, false);
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