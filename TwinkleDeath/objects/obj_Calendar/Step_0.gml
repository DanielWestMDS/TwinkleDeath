/// Navigation of Enums
if (!global.b_dayactive)
{
	b_changeday = true;
}
if (global.b_dayactive && b_changeday)
{
	image_index = 0;
	i_difference = global.i_chats_to_read;
switch (global.i_gameday)
{
	case 1: //Feburary 15th, start of semester
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 15;
		e_weekday = E_WEEKDAY.SUNDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;	
		break;
	case 2: //Feburary 16th, First Day
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 16;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 3: //Feburary 16th, First Day
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 16;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 4: //Feburary 19th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 19;
		e_weekday = E_WEEKDAY.THURSDAY;
		global.e_time_of_day = E_TIMEOFDAY.AFTERNOON;	
		break;
	case 5: //Feburary 21st, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 21;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 6: //Feburary 25th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 25;
		e_weekday = E_WEEKDAY.WEDNESDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 7: //Feburary 27th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 27;
		e_weekday = E_WEEKDAY.FRIDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 8: //New Month!
		e_month = E_MONTH.MARCH;
		e_month_num = 1;
		e_weekday = E_WEEKDAY.SUNDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 9: //Tueday, idle day
		e_month = E_MONTH.MARCH;
		e_month_num = 3;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 10: //Tueday, first week skip
		e_month = E_MONTH.MARCH;
		e_month_num = 10;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 11: //Scott Block Week
		e_month = E_MONTH.MARCH;
		e_month_num = 14;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 12: //LAURIE BURNER DAY AFTER
		e_month = E_MONTH.MARCH;
		e_month_num = 15;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		break;
	case 13: //Timeskipscottreachesout
		e_month = E_MONTH.MARCH;
		e_month_num = 28;
		e_weekday = E_WEEKDAY.FRIDAY;
		global.e_time_of_day = E_TIMEOFDAY.AFTERNOON;	
		break;
	case 14: //more comig into group, x reaches out about secret
		e_month = E_MONTH.APRIL;
		e_month_num = 8;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 15: //day Crispin figures out
		e_month = E_MONTH.APRIL;
		e_month_num = 21;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 16: //day Crispin figures out
		e_month = E_MONTH.APRIL;
		e_month_num = 24;
		e_weekday = E_WEEKDAY.THURSDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	case 17: //day 17 - 23 DAY SKIP
		e_month = E_MONTH.MAY;
		e_month_num = 14;
		e_weekday = E_WEEKDAY.WEDNESDAY; //23 / 30 / 7 / 14
		global.e_time_of_day = E_TIMEOFDAY.MORNING; // 2 / 9 / 16 / 23	
		break;
	case 18: //day 19. Currently a 57 day skip, fuck
		e_month = E_MONTH.MAY;
		e_month_num = 14;
		e_weekday = E_WEEKDAY.WEDNESDAY; 
		global.e_time_of_day = E_TIMEOFDAY.MORNING;
		break;
	case 19: //day 20
		e_month = E_MONTH.JUNE;
		e_month_num = 21;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		break;
	
}
//Setup strings
s_weekday = set_weekday(e_weekday);
s_month_num = string(e_month_num);
s_month_num_close = set_monthclose(e_month_num);
s_month =  set_month(e_month);
s_time_of_day = set_time_ofday(global.e_time_of_day);
show_debug_message("Day:" + s_month_num);

b_changeday = false; //ensures loop once
}

//Changing Sprite (2 sprites)
if (global.e_time_of_day == E_TIMEOFDAY.MORNING || global.e_time_of_day == E_TIMEOFDAY.AFTERNOON)
{
	image_index = 1;
}
else
{
	image_index = 0;
}