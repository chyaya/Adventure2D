///@desc create inventory to object
///@param total slot size
///@param 

var usable_slots = argument0;
var total_slots = argument1;
var slot_in_row = argument2;

enum Inven
{
	SlotSprite,
	SlotSelected,
	TotalSlotNumber,
	UsableSlotNumber,
	SlotInRowNumber,
	
	ItemIds,
	ItemCounts,
	
	LeftInven,
	RightInven,
};


var inventory = ds_list_create();

inventory[|Inven.SlotSprite] = spr_slot;
inventory[|Inven.SlotSelected] = spr_selected_slot;
inventory[|Inven.UsableSlotNumber] = usable_slots;
inventory[|Inven.TotalSlotNumber] = total_slots;
inventory[|Inven.SlotInRowNumber] = slot_in_row;

var itemIds = ds_list_create();
var itemCounts = ds_list_create();

var p = 1
while p <= total_slots
{
    itemIds[|p] = 0;
	itemCounts[|p] = 0;
    p++;
}

inventory[|Inven.ItemIds] = itemIds;
inventory[|Inven.ItemCounts] = itemCounts;

//assert_equal(ds_list_size(inventory[|Inven.ItemIds]), inventory[|Inven.TotalSlotNumber] + 1);
//assert_equal(ds_list_size(inventory[|Inven.ItemCounts]), inventory[|Inven.TotalSlotNumber] + 1);

inventory[|Inven.LeftInven] = undefined;
inventory[|Inven.RightInven] = undefined;

return inventory;