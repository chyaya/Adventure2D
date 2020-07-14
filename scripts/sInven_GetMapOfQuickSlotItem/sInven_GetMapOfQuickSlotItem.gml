/// @description inv_get_first_slot_of(item id)
/// @param item id

//Returns the first slot id that holds a specific item id.

var inven = argument0;

var inv = inven[|Inven.ItemIds];
var total_slots = inven[|Inven.TotalSlotNumber];

var quickSlotItems = ds_map_create();

for (var ii = 1; ii <= total_slots; ++ii)
{
	var itemId = inv[|ii];
	
	if (global.Item_OnQuickSlot[itemId] != noone)
	{
		if(ds_map_find_value(quickSlotItems, itemId) == undefined)
		{
			ds_map_add(quickSlotItems, itemId, 1);
		}
		else
		{
			quickSlotItems[?itemId] += 1;
		}
	}
}

return quickSlotItems;
