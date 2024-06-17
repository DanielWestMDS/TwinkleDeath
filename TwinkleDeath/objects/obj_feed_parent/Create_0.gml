/// @description Insert description here
// You can write your code in this editor

// appear in front of phone
depth = -10;
starty = 0
steppe = 0

mypfp = instance_create_layer(x - 300, y - 280, layer, obj_feedpfp)
mytxt = instance_create_layer(x + 50, y - 280, layer, obj_feedtext)
myimg = instance_create_layer(x - 375, y - 80, layer, obj_feedimg)
//myimg.image_xscale = 1.5;
//myimg.image_yscale = 1.5;

function remove_post()
{
	instance_destroy(myimg);
	instance_destroy(mypfp);
	instance_destroy(mytxt);
	instance_destroy(self);
}