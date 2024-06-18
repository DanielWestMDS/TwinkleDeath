/// @description Insert description here
// You can write your code in this editor

if (mouse_x >= 1200 && mouse_x <= 1528)
{
	if (mouse_y >= 1261 && mouse_y <= 1383)
	{
		image_index = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			game_end();
		}
	}
}
else
{
	image_index = 2;
}