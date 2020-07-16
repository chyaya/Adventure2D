/// @desc NineSliceBox(sprite, x1, y1, x2, y2, [scale]);

var _sprite_index = argument[0];
var _x1 = argument[1];
var _y1 = argument[2];
var _x2 = _x1 + argument[3];
var _y2 = _y1 + argument[4];
var _scale = argument_count > 5 ? argument[5] : 1;

var _img_size = sprite_get_width(_sprite_index)/3;
var _size = _img_size*_scale;
var _w = _x2 - _x1 - 1;
var _h = _y2 - _y1 - 1;
var _columns = _w div _size;
var _rows = _h div _size;

//CORNERS
// top left
draw_sprite_part_ext(_sprite_index, 0, 0, 0, _img_size, _img_size, _x1, _y1, _scale, _scale, c_white, 1);
// top right
draw_sprite_part_ext(_sprite_index, 0, _img_size*2, 0, _img_size, _img_size, _x1 + (_columns * _size), _y1, _scale, _scale, c_white, 1);
// bottom left
draw_sprite_part_ext(_sprite_index, 0, 0, _img_size*2, _img_size, _img_size, _x1, _y1 + (_rows * _size), _scale, _scale, c_white, 1);
// bottom right
draw_sprite_part_ext(_sprite_index, 0, _img_size*2, _img_size*2, _img_size, _img_size, _x1 + (_columns * _size), _y1 + (_rows * _size), _scale, _scale, c_white, 1);

// EDGES
for (var i = 1; i < (_rows); ++i)
{
	// left edge
	draw_sprite_part_ext(_sprite_index, 0, 0, _img_size, _img_size, _img_size, _x1, _y1 + (i*_size), _scale, _scale, c_white, 1);
	// right edge
	draw_sprite_part_ext(_sprite_index, 0, _img_size*2, _img_size, _img_size, _img_size, _x1 + (_columns * _size), _y1 + (i*_size), _scale, _scale, c_white, 1);
}

for (var i = 1; i < (_columns); ++i)
{
	// top edge
	draw_sprite_part_ext(_sprite_index, 0, _img_size, 0, _img_size, _img_size, _x1 + (i*_size), _y1, _scale, _scale, c_white, 1);
	// bottom edge
	draw_sprite_part_ext(_sprite_index, 0, _img_size, _img_size*2, _img_size, _img_size, _x1 + (i*_size), _y1+(_rows * _size), _scale, _scale, c_white, 1);
}

// MIDDLE
for (var i = 1; i < (_columns); ++i)
{
	for (var j = 1; j < (_rows); ++j)
	{
		draw_sprite_part_ext(_sprite_index, 0, _img_size, _img_size, _img_size, _img_size, _x1+(i*_size), _y1+(j*_size), _scale, _scale, c_white, 1);
	}
}