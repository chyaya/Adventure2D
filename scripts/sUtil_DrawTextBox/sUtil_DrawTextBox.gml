var _x = argument0;
var _y = argument1;
var _text = argument2;
var _text_color = argument3;
var _box_color = argument4;


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
		
var b = 5;
var w = string_width(_text);
var h = string_height(_text);
		
draw_rectangle_color(
	_x - w/2 - b, _y - h/2 - b, _x + w/2 + b, _y + h/2 + b,
	_box_color, _box_color, _box_color, _box_color, false);
		
draw_text_color(_x, _y, _text, _text_color, _text_color, _text_color, _text_color, 1);