// Inherit the parent event
event_inherited();

if(m_CraftingCount > 0)
{
	var craftTime = global.Craft_Time[m_SelectedCraftId];
	var deltaTime = current_time - m_CraftingStartTime;
	var rate = deltaTime / craftTime;

	var maxSegment = 32;
	var segment = rate*maxSegment;

	var _x = x - sprite_xoffset + sprite_width/2;
	var _y = y - sprite_yoffset + sprite_height/2;
	
	draw_set_alpha(0.8);
	//sUtil_CircularProgress(_x, _y,
	//	0, 8, maxSegment, segment, 90, 360, -1, c_green); 
	draw_set_alpha(1.0);
	
	var itemId = global.Craft_Result[m_SelectedCraftId];
	
	draw_sprite(global.Item_Sprite[itemId], 0, _x, _y);
	
	draw_set_font(fontNormal);
	draw_text(_x + 4, _y + 4, string(m_CraftingCount));
}