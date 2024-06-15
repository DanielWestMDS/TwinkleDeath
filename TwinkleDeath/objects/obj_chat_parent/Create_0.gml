/// @description Insert description here
// You can write your code in this editor

// create dialogue
b_dialogue_offset = 0;

function dialogue(_i_dialogue_number)
{
	if (global.i_selected_message != 0)
	{
		instance_create_layer(x + 200, 1300, "Chat", obj_response, {image_index : _i_dialogue_number + b_dialogue_offset + global.i_selected_message - 2});
		// reset globals once dialogue selected
		global.b_selecting_message = false;
		global.i_selected_message = 0;
		current_messages_sent++;
		y -= 100;
	}
	//instance_create_layer(300, 300, "Chat", obj_dialogue_groupchat_one, {image_index : _i_dialogue_number});
}

function selectbutton(_i, _b_multiple_dialogue)
{
	if (!global.b_selecting_message)
	{
		instance_create_layer(1650, 1000, "instances", obj_dialogue, {image_index : _i + b_dialogue_offset});
		
		if (_b_multiple_dialogue)
		{
			b_dialogue_offset++;
			instance_create_layer(1650, 600, "instances", obj_dialogue, {image_index : _i + b_dialogue_offset});		
		}
	}
	global.b_selecting_message = true;
	dialogue(_i);	
}