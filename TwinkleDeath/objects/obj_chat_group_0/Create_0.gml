/// @description Insert description here
// You can write your code in this editor

image_alpha = 1.0;
// appear above phone
depth = -10;

// only iterate messages on click
image_speed = 0;

// start height
start_height = y;
current_y = y;

current_messages_sent = 0;

// dialogue bugging out
b_dialogue_generated = false;

b_waiting = false;

b_chat_finished = false;

if (global.b_group_read)
{
	image_index = f_chat_length - 1;
}

if (global.b_group_paused)
{
	y = -1600;
	current_y = y;
	current_messages_sent = 17;
}

// create dialogue
function dialogue(_i_dialogue_number)
{
	if (global.i_selected_message != 0)
	{
		instance_create_layer(x + 200, 1300, "Chat", obj_responses_groupchat_one, {image_index : _i_dialogue_number});
		current_messages_sent++;
		y -= 100;
	}
	//instance_create_layer(300, 300, "Chat", obj_dialogue_groupchat_one, {image_index : _i_dialogue_number});
}
//image_xscale = 0.5;
//image_yscale = 0.5;