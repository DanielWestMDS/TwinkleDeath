/// @description Insert description here
// You can write your code in this editor

y = starty + obj_feedhandler.yPos// - (obj_feedhandler.curblock * obj_feedhandler.blength);
mypfp.y = y - 280;
mytxt.y = y - 280;
myimg.y = y - 80;

// destroy all posts if a chat is opened
if (global.b_chat_opened)
{
	remove_post()
}