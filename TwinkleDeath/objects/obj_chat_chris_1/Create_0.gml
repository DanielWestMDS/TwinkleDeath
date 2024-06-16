/// @description Insert description here
// You can write your code in this editor

image_alpha = 1.0;
// appear above phone
depth = -10;

// only iterate messages on click
image_speed = 0;

// start height
start_height = y;

current_messages_sent = 0;

// dialogue bugging out
b_dialogue_generated = false;

b_waiting = false;

b_chat_finished = false;

obj_dialogue = obj_dialogue_laurie_one;
obj_response = obj_responses_laurie_one;

global.i_current_responses = 0;

if (global.b_laurie_read)
{
	y = 200;
}

current_y = y;

event_inherited();
//image_xscale = 0.5;
//image_yscale = 0.5;