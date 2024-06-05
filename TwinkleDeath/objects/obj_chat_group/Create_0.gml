/// @description Insert description here
// You can write your code in this editor

image_alpha = 1.0;
// appear above phone
depth = -10;

// only iterate messages on click
image_speed = 0;

// dialogue bugging out
b_dialogue_generated = false;

b_chat_finished = false;

// number of messages in this chat
f_chat_length = sprite_get_info(spr_chat_group).num_subimages;
//image_xscale = 0.5;
//image_yscale = 0.5;