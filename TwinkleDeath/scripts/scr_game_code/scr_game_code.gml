// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function update_days(_gameday, _worldday)
{
//Updates days based on inputs.
gameday = _gameday + 1;
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

function modify_stress()
{
stress = global.f_stress;

//Stress lowers if phone lowered
if (global.b_phoneactive == true)
{
stress -= 0.1;
}

//Avoid Lower Limit
if (stress <= 0)
{
stress = 0.0;
}
//Avoid upper limit
if (stress >= 10.0)
{
stress = 0.0;
}
}