/// @description Insert description here
// You can write your code in this editor

// change sprite based on tab open
switch(global.tab_open)
{
	case TABS.FEED:
		image_index = 0;
	break;
	
	case TABS.MESSAGES:
		image_index = 1;
	break;
	
	case TABS.PROFILE:
		image_index = 2;
	break;
}