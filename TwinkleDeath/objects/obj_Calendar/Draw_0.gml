/// @description Insert description here
// You can write your code in this editor
//Displaying of text
draw_set_font(fnt_arial_25);
draw_self();
//draw_set_color();

if(global.b_dayactive)
{
	draw_text(2450, 110, string(s_month_num + s_month_num_close + " " + s_month));
	draw_text(2230, 60, string(s_weekday + string(" ") + s_time_of_day));
}
