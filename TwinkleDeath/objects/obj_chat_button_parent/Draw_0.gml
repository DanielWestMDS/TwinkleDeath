/// @description Insert description here
// You can write your code in this editor

// change sprite if mouse hover
if (position_meeting(mouse_x, mouse_y, id))
{
    //mouse is hovering
	image_alpha = 0.6;
}
else
{
	image_alpha = 1.0;
}

// appear on da screen
draw_self();