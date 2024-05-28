/// @description Insert description here
// You can write your code in this editor

// change sprite if mouse hover
if (position_meeting(mouse_x, mouse_y, id))
{
    //mouse is hovering
	shader_set(sh_hover);
}
else
{
	shader_reset();
}

draw_self();