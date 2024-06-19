/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{
		url_open("https://www.unicef.org/end-violence/how-to-stop-cyberbullying");
    }
}

