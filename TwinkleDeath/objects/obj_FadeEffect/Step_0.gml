/// @description Insert description here
// You can write your code in this editor
if (!global.b_dayactive) //Fade Out
{
	if(fadecooldowncurrent < fadecooldownmin)
	{
		fadecooldowncurrent += 0.5;
	}
}

if (global.b_dayactive) //Fade In
{
	if(fadecooldowncurrent > fadecooldownmax)
	{
		fadecooldowncurrent -= 0.5;
	}
}
alpha = fadecooldowncurrent/40;
image_alpha = (alpha);

