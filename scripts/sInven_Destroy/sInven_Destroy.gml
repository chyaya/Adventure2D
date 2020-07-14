var inventory = argument0;

ds_list_destroy(inventory[|Inven.ItemIds]);
ds_list_destroy(inventory[|Inven.ItemCounts]);

ds_list_destroy(inventory);


