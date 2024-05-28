/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left)
{
	if collision_point(mouse_x, mouse_y, id, true, false) { //Arguments are (x, y, obj, prec, notme)
        //Spin
		spin = true;
    }
}

if (spin)
{
	image_angle += rotation_speed;
	if (image_angle >= 360) {
    image_angle -= 360;
	spin = false;
	}
}