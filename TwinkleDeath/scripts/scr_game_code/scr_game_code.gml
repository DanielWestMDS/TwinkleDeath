// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function update_days(_gameday, _worldday)
{
//Updates days based on inputs.
gameday = _gameday + 2;
global.i_gameday = gameday;
worldday = 1;
switch (gameday)
{
case 0:
worldday = 1;
break;
case 1:
worldday = 2;
break;
case 2:
worldday = 2;
break;
case 3:
worldday = 3;
break;
case 4:
worldday = 6;
break;
case 5:
worldday = 8;
break;
case 6:
worldday = 11;
break;
case 7:
worldday = 14;
break;
case 8:
worldday = 18;
break;
case 9:
worldday = 19;
break;
case 10:
worldday = 20;
break;
default:
worldday = _worldday +1;
break;
}
global.i_worldday = worldday;
}


function check_phone() 
{
	return true;
}


//Change position rather than change image
//combination of both
//Check how daniel is doing it first (woods)

function set_weekday(_weekday)
{
	day = "Monday";
	if (_weekday == E_WEEKDAY.MONDAY)
	{
		day = "Monday";
	}
	if (_weekday == E_WEEKDAY.TUESDAY)
	{
		day = "Tuesday";
	}
	if (_weekday == E_WEEKDAY.WEDNESDAY)
	{
		day = "Wednesday";
	}
	if (_weekday == E_WEEKDAY.THURSDAY)
	{
		day = "Thursday";
	}
	if (_weekday == E_WEEKDAY.FRIDAY)
	{
		day = "Friday";
	}
	if (_weekday == E_WEEKDAY.SATURDAY)
	{
		day = "Saturday";
	}
	if (_weekday == E_WEEKDAY.SUNDAY)
	{
		day = "Sunday";
	}
	return string(day);
}

function set_monthclose(_month)
{
	s_end = "th";
	if (_month == 1 || _month == 21 || _month == 31)
	{
		s_end = "st";
	}
	if (_month == 2 || _month == 22)
	{
		s_end = "nd";
	}
	if (_month == 3 || _month == 23)
	{
		s_end = "rd";
	}
	//everything else is th
	return string(s_end);
}

function set_month(_month)
{
	s_month = "Jan";
	if (_month == E_MONTH.FEBRUARY)
	{
		s_month = "Feb";
	}
	if (_month == E_MONTH.MARCH)
	{
		s_month = "Mar";
	}
	if (_month == E_MONTH.APRIL)
	{
		s_month = "Apr";
	}
	if (_month == E_MONTH.MAY)
	{
		s_month = "May";
	}
	if (_month == E_MONTH.JUNE)
	{
		s_month = "Jun";
	}
	if (_month == E_MONTH.JULY)
	{
		s_month = "Jul";
	}
	if (_month == E_MONTH.AUGUST)
	{
		s_month = "Aug";
	}
	if (_month == E_MONTH.SEPTEMBER)
	{
		s_month = "Sep";
	}
	if (_month == E_MONTH.OCTOBER)
	{
		s_month = "Oct";
	}
	if (_month == E_MONTH.NOVEMBER)
	{
		s_month = "Nov";
	}
	if (_month == E_MONTH.DECEMBER)
	{
		s_month = "Dec";
	}

	//everything else is th
	return string(s_month);
}

function set_time_ofday(_day)
{
	day = "Morning";
	if (_day = E_TIMEOFDAY.AFTERNOON)
	{
		day = "Afternoon";
	}
	if (_day = E_TIMEOFDAY.EVENING)
	{
		day = "Evening";
	}
	if (_day = E_TIMEOFDAY.NIGHT)
	{
		day = "Night";
	}
	return string(day);
}

function move_with_cam(_Object, _min, _max)
{
	move = 0;
	if (mouse_x < 1366)
	{
		movedir = 1366 - mouse_x;
		movedir /= 50;
		movedir -= 10;
		if (movedir < 0)
		{
			movedir = 0;
		}
		move += movedir;
	}
	else if (mouse_x > 1366)
	{
		movedir = mouse_x - 1366;
		movedir /= 30;
		movedir -= 20;
		if (movedir < 0)
		{
			movedir = 0;
		}
		move -= movedir;
	}
	
	if (obj_Room.x > _min && obj_Room.x < _max) 
	{
		_Object.x += move;
		obj_Quagsire.x += move;
		obj_Blinds.x += move;
	}
	//fix bounding issues
	boundhigh = _Object.x - _min;
	boundlow = _max - _Object.x;
	show_debug_message(boundhigh);
	show_debug_message(boundlow);
	if (boundlow < 0)
	{
		_Object.x += boundlow - 0.1;
		obj_Quagsire.x += boundlow - 0.1;
		obj_Blinds.x += boundlow - 0.1;
	}
	if (boundhigh < 0)
	{
		_Object.x -= boundhigh - 0.1;
		obj_Quagsire.x -= boundhigh - 0.1;
		obj_Blinds.x -= boundhigh - 0.1;
	}

}

function setjournal(_transparency)
{
	//still fixing
	obj_journal.image_alpha = _transparency;
	
	//Set Position based on day
	if (global.i_gameday == 1)
	{
		//BedLamp
		image_index = 1;
		obj_journal.x = obj_Room.x - 800;
		obj_journal.y = 150;
	}
}