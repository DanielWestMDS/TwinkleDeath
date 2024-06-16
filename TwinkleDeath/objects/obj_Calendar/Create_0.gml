
enum E_WEEKDAY
{
	MONDAY,
	TUESDAY,
	WEDNESDAY,
	THURSDAY,
	FRIDAY,
	SATURDAY,
	SUNDAY
}

enum E_MONTH
{
	JANUARY,
	FEBRUARY,
	MARCH,
	APRIL,
	MAY,
	JUNE,
	JULY,
	AUGUST,
	SEPTEMBER,
	OCTOBER,
	NOVEMBER,
	DECEMBER,
}

enum E_TIMEOFDAY
{
	MORNING,
	AFTERNOON,
	EVENING,
	NIGHT,
}


s_weekday = " ";
s_month_num = " ";
s_month_num_close = " ";
s_month = " ";
s_time_of_day = " ";

e_month_num = 1;
e_month = E_MONTH.JANUARY;
global.e_time_of_day = E_TIMEOFDAY.NIGHT;
e_weekday = E_WEEKDAY.SUNDAY;

b_changeday = true;
i_difference = 0;