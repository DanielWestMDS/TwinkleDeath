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