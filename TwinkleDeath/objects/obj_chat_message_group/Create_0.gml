/// @description Insert description here
// You can write your code in this editor

order = 0;

if (global.b_group_read || (global.b_group_paused && !global.b_laurie_read))
{
	image_index = 1;
}
else
{
	image_index = 0;
}
// Inherit the parent event
event_inherited();

