var moveSpeedRate = argument0;

#macro TILE_SIZE	16
#macro TILE_SHIFT   4		// 1<<4 = 16
#macro TILE_OFFSET	0

#macro OBJ_HALF_W	5
#macro OBJ_HALF_H	5

sMacro_TileIndex();

var seconds_passed = delta_time/1000000;
var move_speed_this_frame = m_MoveSpeed*moveSpeedRate*seconds_passed;

	
	
if(place_free(x + m_DirX*move_speed_this_frame, y))
	x += m_DirX*move_speed_this_frame;

if( m_DirX != 0 )
{
	// m_DirX -1일 때 xoffset이 뒤집어짐
	var correct_xoffset = m_DirX*sprite_xoffset;
	var correct_bbox_left = sprite_get_bbox_left(sprite_index);
	var correct_bbox_right = sprite_get_bbox_right(sprite_index);
	
	if(x < correct_xoffset - correct_bbox_left)
		x = correct_xoffset - correct_bbox_left;
		
	if(x > room_width + correct_xoffset - correct_bbox_right)
		x = room_width + correct_xoffset - correct_bbox_right;
}

if(place_free(x, y + m_DirY*move_speed_this_frame))
	y += m_DirY*move_speed_this_frame;

if( m_DirY != 0 )
{
	if(y < sprite_yoffset - sprite_get_bbox_top(sprite_index))
		y = sprite_yoffset - sprite_get_bbox_top(sprite_index);
		
	if(y > room_height + sprite_yoffset - sprite_get_bbox_bottom(sprite_index))
		y = room_height + sprite_yoffset - sprite_get_bbox_bottom(sprite_index);
}