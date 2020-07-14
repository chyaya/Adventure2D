var craftId = argument[0];

var i = 1;
global.Craft_Result[craftId] = argument[i++];
global.Craft_Time[craftId] = argument[i++];
global.Craft_Material_ItemId[craftId] = argument[i++];
global.Craft_Material_Count[craftId] = argument[i++];
global.Craft_Require_Building[craftId] = argument[i++];

assert_is_array(global.Craft_Material_ItemId[craftId]);
assert_is_array(global.Craft_Material_Count[craftId]);
assert_equal(
	array_length_1d(global.Craft_Material_ItemId),
	array_length_1d(global.Craft_Material_Count));