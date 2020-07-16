/// @desc NineSliceBox(sprite, x1, y1, x2, y2, [scale]);

var _sprite_index = argument[0];
var _x1 = argument[1];
var _y1 = argument[2];
var _x2 = _x1 + argument[3];
var _y2 = _y1 + argument[4];
var _scale = argument_count > 5 ? argument[5] : 1;

var _img_size = sprite_get_width(_sprite_index)/3;
var _size = _img_size*_scale;
var _w = _x2 - _x1;
var _h = _y2 - _y1;

// MIDDLE
draw_sprite_part_ext(_sprite_index, 0, _img_size, _img_size, 1, 1, _x1+_size, _y1+_size, _w-(_size*2), _h-(_size*2), c_white, 1);

//CORNERS
// top left
draw_sprite_part_ext(_sprite_index, 0, 0, 0, _img_size, _img_size, _x1, _y1, _scale, _scale, c_white, 1);
// top right
draw_sprite_part_ext(_sprite_index, 0, _img_size*2, 0, _img_size, _img_size, _x1 + _w - _size, _y1, _scale, _scale, c_white, 1);
// bottom left
draw_sprite_part_ext(_sprite_index, 0, 0, _img_size*2, _img_size, _img_size, _x1, _y1 + _h - _size, _scale, _scale, c_white, 1);
// bottom right
draw_sprite_part_ext(_sprite_index, 0, _img_size*2, _img_size*2, _img_size, _img_size, _x1 + _w - _size, _y1 + _h - _size, _scale, _scale, c_white, 1);

// EDGES
// left edge
draw_sprite_part_ext(_sprite_index, 0, 0, _img_size, _img_size, 1, _x1, _y1+_size, _scale, _h-(_size*2), c_white, 1);
// right edge
draw_sprite_part_ext(_sprite_index, 0, _img_size*2, _img_size, _img_size, 1, _x1+_w-_size, _y1+_size, _scale, _h-(_size*2), c_white, 1);
// top edge
draw_sprite_part_ext(_sprite_index, 0, _img_size, 0, 1, _img_size, _x1+_size, _y1, _w-(_size*2), _scale, c_white, 1);
// bottom edge
draw_sprite_part_ext(_sprite_index, 0, _img_size, _img_size*2, 1, _img_size, _x1+_size, _y1+_h-_size, _w-(_size*2), _scale, c_white, 1);


