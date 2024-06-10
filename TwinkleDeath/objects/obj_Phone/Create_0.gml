/// @description Insert description here
// You can write your code in this editor

// set depth high so it appears behind everything
depth = 10;

image_speed = 0;

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

instance_create_layer(1344, 128, "Chat", obj_chat_button_select);

// order of display for chats
global.chats = [obj_chat_button_select, 
				obj_chat_button_select, 
				obj_chat_button_select, 
				obj_chat_button_select, 
				obj_chat_button_select];
				
				
// global bools for each chat
global.b_group_read = false;
global.b_laurie_read = false;
global.b_crispin_read = false;
global.b_burner_read = false;
global.b_leo_read = false;
global.b_justin_read = false;
global.b_burner2_read = false;
global.b_adam_read = false;

// what day we are on
global.i_day = 0;

// is phone away
global.b_phone_away = false;