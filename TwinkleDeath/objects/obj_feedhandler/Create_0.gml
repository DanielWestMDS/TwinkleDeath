/// @description Insert description here
// You can write your code in this editor

mscale = 1
blength = 1000 * mscale
curblock = 0
prevblock = -1
feedopen = false

object_set_sprite(obj_feed_parent, postSet);
	
// creates a post block
function create_post(pos) {
	_instle = instance_create_layer(2732/2, ((curblock+pos)*blength) - yPos, layer, obj_feed_parent)
	_instle.depth = -20
	_instle.starty = ((curblock+pos)*blength)
	_instle.image_index = (abs((pos)) % 3)
	_instle.y = _instle.starty - yPos
	_instle.image_xscale = mscale;
	_instle.image_yscale = mscale;
}

num = 0;

function create_feed()
{
	feedopen = true
	num = instance_number(obj_feed_parent)
	if (num != 0) {
		for (var i = num -1; i >= 0; i-=1)
		{
			_inst = instance_find(obj_feed_parent, i);
			_inst.remove_post()
		}
	}
	create_post(0 - curblock)
	create_post(1 - curblock)
	create_post(2 - curblock)
	create_post(3 - curblock)	
}


function create_permpost(pos) {
	_instle = instance_create_layer(2732/2, ((curblock+pos)*blength) - yPos, layer, obj_feed_parent)
	_instle.depth = -20
	_instle.starty = ((curblock+pos)*blength)
	_instle.image_index = (abs((pos)) % 3)
	_instle.y = _instle.starty - yPos
	_instle.image_xscale = mscale;
	_instle.image_yscale = mscale;
}

function create_permfeed()
{
	feedopen = true;
	for (var i = maxfeedlength-1; i >= 0; i-=1) {
		create_permpost(i - curblock)	}
}

create_permfeed()
yPos = blength;