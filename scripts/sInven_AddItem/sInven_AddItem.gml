/// @description inv_add_item(itemid, number of items)
/// @param itemid
/// @param number of items

//Adds items to your inventory.

var ii = 1
var inven = argument[0];
var itemId = argument[1];
var itemCount = argument[2];
var checkOnly = argument_count > 3 ? argument[3] : false;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];

while (ii <= total_slots) and itemCount > 0
{
	if((inv[|ii] == 0 || inv[|ii] == itemId) && inv_count[|ii] < global.Item_MaxCount[itemId])
	{	
		var remain = min(global.Item_MaxCount[itemId] - inv_count[|ii], itemCount);

		if(false == checkOnly)
		{
			if(inv[|ii] == 0)
				inv[|ii] = itemId;
				
			inv_count[|ii] += remain;
		}
			
		itemCount -= remain;
	}
	
    ii++
}

return itemCount;