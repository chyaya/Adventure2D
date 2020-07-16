/*
if(m_PlayerObject == noone)
	return;
	
var viewW = view_wport[0];
var viewH = view_hport[0];

var selectedItemId = Item.NONE;

with(m_PlayerObject)
{
	var slotSize = 80;
	var gapSize = 16;
	var row = sInven_GetSlotInRow(m_Inven_Bag);
	sInven_DrawUI(m_Inven_Bag, (viewW - row*slotSize - (row - 1)*gapSize)*0.5, 300, slotSize, row, gapSize);
	
	selectedItemId = sInven_GetItemId(other.m_CurrentInven, other.m_CurrentInvenSlot);
}


draw_set_font(fontGUINormal);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite_ext(global.Item_Sprite[selectedItemId], 0, view_wport[0] - 320, view_hport[0]/2 - 120, 8, 8, 0, c_white, 1);
sUtil_DrawTextShadow(view_wport[0] - 320, view_hport[0]/2 - 25, global.Item_Text[selectedItemId]);
sUtil_DrawTextShadow(view_wport[0] - 320, view_hport[0]/2 + 25, global.Item_Desc[selectedItemId]);


///////////////////////////////


draw_sprite_ext(sprWomanIdle,
	(current_time / 1000 * sprite_get_speed(sprWomanIdle)) mod sprite_get_number(sprWomanIdle) ,
	320, view_hport[0]/2, 12, 12, 0, c_white, 1.0);
	
with(m_PlayerObject)
{
	var _x = 185;
	var _y = 600;
	
	sInven_DrawUI(m_Inven_Equip, _x, _y, slotSize, 3, gapSize);

	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	_x += slotSize/2;
	_y += slotSize + gapSize;
	
	for(var i = 1; i < Equip.MAX; ++i)
	{
		sUtil_DrawTextShadow(_x, _y, m_EquipName[i]);
		_x += slotSize + gapSize;	
	}
}

/*
with(m_PlayerObject)
{
	var slotSize = 64;
	
	NineSliceBoxStretch(
		spr_slot, (viewW - slotSize)*0.5, viewH - 100,
		slotSize, slotSize, 3);
		
	var _x = (viewW - slotSize)*0.5;
	var _y = viewH - 100;
		
	draw_sprite_stretched(
		global.Item_Sprite[inv[selected]],0,
		_x, _y, slotSize, slotSize);
				
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fontNormal);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
		
	if(inv_count[selected] > 1)
		draw_text(_x + slotSize - 5, _y + slotSize - 3, string(inv_count[selected]));
}
*/