/// @description Insert description here
// You can write your code in this editor

// create dialogue
function dialogue(_i_dialogue_number)
{
	if (global.i_selected_message != 0)
	{
		// reset globals once dialogue selected
		global.b_selecting_message = false;
		global.i_selected_message = 0;
		instance_create_layer(x + 200, 1300, "Chat", obj_response, {image_index : _i_dialogue_number});
		current_messages_sent++;
		y -= 100;
	}
	//instance_create_layer(300, 300, "Chat", obj_dialogue_groupchat_one, {image_index : _i_dialogue_number});
}

function selectbutton(_i)
{
	if (!global.b_selecting_message)
	{
		instance_create_layer(1650, 1000, "instances", obj_dialogue, {image_index : _i});
	}
	global.b_selecting_message = true;
	dialogue(_i);	
}