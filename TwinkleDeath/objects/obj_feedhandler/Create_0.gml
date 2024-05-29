/// @description Insert description here
// You can write your code in this editor

mscale = 3
blength = 256 * mscale
curblock = 0
prevblock = -1
feedopen = false

// creates a post block
function create_post(pos) {
	_instle = instance_create_layer(2732/4, ((curblock+pos)*blength) - yPos, layer, obj_feed_parent)
	_instle.depth = -20
	_instle.starty = ((curblock+pos)*blength)
	_instle.image_index = (abs((pos)) % 3)
	_instle.y = _instle.starty - yPos
	_instle.image_xscale = mscale;
	_instle.image_yscale = mscale;
}

function create_feed()
{
	feedopen = true
	num = instance_number(obj_feed_parent)
	for (var i = num; i >= 0; i-=1)
	{
		_inst = instance_find(obj_feed_parent, i);
		instance_destroy(_inst)
	}
	create_post(-1 - curblock)
	create_post(0 - curblock)
	create_post(1 - curblock)
	create_post(2 - curblock)	
}