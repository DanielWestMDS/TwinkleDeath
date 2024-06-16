/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71699C2D
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)// do something if mouse clicks$(13_10)if mouse_check_button_pressed(mb_left) $(13_10){$(13_10)	//Arguments are (x, y, obj, prec, notme)$(13_10)    if collision_point(mouse_x, mouse_y, id, true, false) $(13_10)	{ $(13_10)		// chat opened$(13_10)		global.b_chat_opened = true;$(13_10)		// change to chat object$(13_10)		switch(global.i_gameday)$(13_10)		{$(13_10)			case(1):$(13_10)				// day 0 group chat$(13_10)				instance_create_layer(room_width / 2, 1200, "Chat", obj_chat_laurie_0);$(13_10)			break;$(13_10)			$(13_10)			case(2):$(13_10)			// day 1 group chat$(13_10)				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_1);$(13_10)			break;$(13_10)			$(13_10)			case(3):$(13_10)			// day 2 group chat$(13_10)				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_group_2);$(13_10)			break;$(13_10)		$(13_10)		}$(13_10)		instance_destroy(self);$(13_10)    }$(13_10)}$(13_10)$(13_10)// teleport away if phone put away$(13_10)if (!global.b_phoneactive)$(13_10){$(13_10)	x = 10000;$(13_10)	y = 10000;$(13_10)}$(13_10)else$(13_10){$(13_10)	x = room_width / 2;$(13_10)	y = (room_height / 2) + 200;$(13_10)}$(13_10)$(13_10)if (global.tab_open != 1)$(13_10){$(13_10)	instance_destroy();	$(13_10)}$(13_10)$(13_10)// Inherit the parent event$(13_10)event_inherited();$(13_10)$(13_10)$(13_10)"
/// @description Insert description here
// You can write your code in this editor

// do something if mouse clicks
if mouse_check_button_pressed(mb_left) 
{
	//Arguments are (x, y, obj, prec, notme)
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		// chat opened
		global.b_chat_opened = true;
		// change to chat object
		switch(global.i_gameday)
		{
			case(1):
				// day 0 group chat
				instance_create_layer(room_width / 2, 1200, "Chat", obj_chat_laurie_0);
			break;
			
			case(2):
			// day 1 group chat
				instance_create_layer(room_width / 2, 1050, "Chat", obj_chat_chris_1);
			break;
			
			case(3):
			// day 2 group chat
				instance_create_layer(room_width / 2, room_height / 2, "Chat", obj_chat_group_1b);
			break;
		
		}
		instance_destroy(self);
    }
}

// teleport away if phone put away
if (!global.b_phoneactive)
{
	x = 10000;
	y = 10000;
}
else
{
	x = room_width / 2;
	y = (room_height / 2) + 200;
}

if (global.tab_open != 1)
{
	instance_destroy();	
}

// Inherit the parent event
event_inherited();