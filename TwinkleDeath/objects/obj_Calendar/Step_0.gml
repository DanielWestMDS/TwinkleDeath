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
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//day 2
		
	case 2: //Feburary 16th, First Day
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 16;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GODOOR;
		break;
	case 3: //Feburary 16th, First Day
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 16;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 3

	case 4: //Feburary 19th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 19;
		e_weekday = E_WEEKDAY.THURSDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOWORK;
		break;
	case 5: //Feburary 19th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 21;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 4
		
	case 6: //Feburary 25th, afternoon
		e_month = E_MONTH.FEBRUARY;
		e_month_num = 25;
		e_weekday = E_WEEKDAY.WEDNESDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GODOOR;
		break;
		
		//Day 5
		
	case 7: 
		e_month = E_MONTH.MARCH;
		e_month_num = 14;
		e_weekday = E_WEEKDAY.FRIDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		global.enddaycondition = E_JOURNAL.GONOTES;
		break;
		
		//Day 6
		
	case 8: //New Month!
		e_month = E_MONTH.APRIL;
		e_month_num = 7;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GODOOR;
		break;
	case 9: //Tueday, idle day
		e_month = E_MONTH.APRIL;
		e_month_num = 7;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 7
	
	case 10: //Tueday, first week skip
		e_month = E_MONTH.APRIL;
		e_month_num = 23;
		e_weekday = E_WEEKDAY.WEDNESDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOWORK;
		break;
	case 11: //Scott Block Week
		e_month = E_MONTH.APRIL;
		e_month_num = 23;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.EVENING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 8
		
	case 12: //LAURIE BURNER DAY AFTER
		e_month = E_MONTH.MAY;
		e_month_num = 12;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GODOOR;
		break;
	case 13: 
		e_month = E_MONTH.MAY;
		e_month_num = 12;
		e_weekday = E_WEEKDAY.SATURDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 9
		
	case 14:
		e_month = E_MONTH.MAY;
		e_month_num = 23;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//DAY 10???
		
	case 15: 
		e_month = E_MONTH.MAY;
		e_month_num = 23;
		e_weekday = E_WEEKDAY.TUESDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//dAY 10
		
	case 16: 
		e_month = E_MONTH.JUNE;
		e_month_num = 18;
		e_weekday = E_WEEKDAY.THURSDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
	case 17: 
		e_month = E_MONTH.JUNE;
		e_month_num = 18;
		e_weekday = E_WEEKDAY.WEDNESDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT; 
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
	case 18: //SECOND NIGHT SCENE
		e_month = E_MONTH.JUNE;
		e_month_num = 18;
		e_weekday = E_WEEKDAY.WEDNESDAY; 
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
		
		//Day 11
	case 19:
		e_month = E_MONTH.JUNE;
		e_month_num = 22;
		e_weekday = E_WEEKDAY.FRIDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
	case 20: 
		e_month = E_MONTH.JUNE;
		e_month_num = 22;
		e_weekday = E_WEEKDAY.SUNDAY;
		global.e_time_of_day = E_TIMEOFDAY.NIGHT;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
		break;
	
		//dAY 12 TECHNICALLY
		
	case 21:  //Literally just wake up and leave, no phone
		e_month = E_MONTH.JUNE;
		e_month_num = 23;
		e_weekday = E_WEEKDAY.MONDAY;
		global.e_time_of_day = E_TIMEOFDAY.MORNING;	
		global.enddaycondition = E_JOURNAL.GOSLEEP;
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