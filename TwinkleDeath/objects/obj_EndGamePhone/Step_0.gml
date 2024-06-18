/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
    // Print the mouse coordinates to the console
    show_debug_message("Mouse X: " + string(mouse_x) + ", Mouse Y: " + string(mouse_y));
}


//1200, 1115
//1528, 1242

if (mouse_x >= 1200 && mouse_x <= 1528)
{
	if (mouse_y >= 1261 && mouse_y <= 1383)
	{
		image_index = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			room_goto_next();
		}
	}
}
else
{
	image_index = 2;
}