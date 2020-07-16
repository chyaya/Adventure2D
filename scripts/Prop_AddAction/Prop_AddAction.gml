var actionId = argument[0];

var i = 1;
global.Action_Name[actionId] = argument[i++];
global.Action_Food_Cost[actionId] = argument[i++];
global.Action_Tool_ItemId[actionId] = argument[i++];
global.Action_Tool_ItemCount[actionId] = argument[i++];


assert_is_array(global.Action_Tool_ItemId[actionId]);
assert_is_array(global.Action_Tool_ItemCount[actionId]);
assert_equal(
	array_length_1d(global.Action_Tool_ItemId),
	array_length_1d(global.Action_Tool_ItemCount));