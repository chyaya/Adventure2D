draw_set_alpha(1.0);
draw_set_color(c_white);
draw_set_font(fntNanum);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var inven = argument[0];
var inventory_x = argument[1];
var inventory_y = argument[2];
var slot_size = argument[3];
var slots_in_row = argument[4];
var slots_gap = argument_count > 5 ? argument[5] : 0;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];
var slot_selected = inven[|Inven.SlotSelected];
var slot_sprite = inven[|Inven.SlotSprite];

var ss = 1
var xx = 0
var yy = 0
while (ss <= total_slots) { //Draw the background slots.
	if (xx < slots_in_row) {
	    if oPlayerController.m_CurrentInven == inven
			&& oPlayerController.m_CurrentInvenSlot == ss
		{
			NineSliceBoxStretch(slot_selected,
				xx*(slot_size + slots_gap) + inventory_x,
				yy*(slot_size + slots_gap) + inventory_y,
				slot_size, slot_size, 3);
		}
	    else
		{
	        NineSliceBoxStretch(slot_sprite,
				xx*(slot_size + slots_gap) + inventory_x,
				yy*(slot_size + slots_gap) + inventory_y,
				slot_size, slot_size, 3);
		}
	    xx+=1;
	    ss+=1;
	}
	else {
	    yy+=1;
	    xx=0;
	}
} 
    
ss = 1
xx = 0
yy = 0
while (ss <= total_slots) { //Draw the item icons.
	if (xx < slots_in_row) {

		var _x = xx*(slot_size + slots_gap) + inventory_x;
		var _y = yy*(slot_size + slots_gap) + inventory_y;
			
	    draw_sprite_stretched(
			global.Item_Sprite[inv[|ss]],0,_x,_y,
			slot_size, slot_size);
				
		if(inv_count[|ss] > 1)
			draw_text(_x + slot_size - 5, _y+slot_size, string(inv_count[|ss]));

	    xx+=1;
	    ss+=1;
	}
	else {
	    yy+=1;
	    xx=0;
	}
} 
