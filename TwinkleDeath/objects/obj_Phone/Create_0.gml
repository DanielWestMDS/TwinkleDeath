/// @description Insert description here
// You can write your code in this editor

// set depth high so it appears behind everything
depth = 10;

// global variable for if chat is open
global.b_chat_opened = false;
// global variable for if the player needs to select dialogue
global.b_selecting_message = false;
// for selected dialogue 
global.i_selected_message = 0;

enum CURRENT_CHAT
{
	NONE,
	GROUP,
	LAURIE,
}