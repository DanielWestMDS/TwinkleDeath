/// @description Game creation and starting will be happening here
fadecooldownmax = 0;
fadecooldowncurrent = 40;
b_resetroom = false;

//Global Stats
global.b_dayactive = false; //Should only be modified by Day Manager. Tells when the day is currently running.
global.i_gameday = 0; //Current Day in Game
global.i_worldday = 0; //Current Day in World
global.b_endday = false; //Modified by Phone when they reach a condition that determines the day ends.
//Assuming that Phone carries own custom conditions (or script)


global.b_phoneactive = false; //A check to see if the player has raised or lowered their phone.
