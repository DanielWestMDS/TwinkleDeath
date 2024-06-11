
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

enum E_MONTHCLOSE
{
	ST,
	ND,
	RD,
	TH,
}

s_weekday = "Monday";
s_month_num = "14";
s_month_num_close = "th";
s_month = "February";
s_time_of_day = "Evening";

e_month_num = E_MONTHCLOSE.ND;
e_month_num = 1;
e_month = E_MONTH.JANUARY;
e_time_of_day = E_TIMEOFDAY.NIGHT;